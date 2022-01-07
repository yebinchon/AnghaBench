
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int fs; } ;
typedef TYPE_2__ svn_repos_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_path_change_iterator_t ;
struct TYPE_19__ {char const* data; int len; } ;
struct TYPE_21__ {scalar_t__ mergeinfo_mod; TYPE_1__ path; scalar_t__ prop_mod; } ;
typedef TYPE_3__ svn_fs_path_change3_t ;
struct TYPE_22__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
struct path_revision {char* path; scalar_t__ revnum; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (TYPE_4__*) ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 TYPE_4__* SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_hash_count (int *) ;
 char* apr_pstrmemdup (int *,char const*,int ) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_error_trace (TYPE_4__*) ;
 TYPE_4__* svn_fs__get_mergeinfo_for_path (int **,int *,char*,int ,int ,int *,int *) ;
 TYPE_4__* svn_fs_path_change_get (TYPE_3__**,int *) ;
 TYPE_4__* svn_fs_paths_changed3 (int **,int *,int *,int *) ;
 TYPE_4__* svn_fs_revision_root (int **,int ,scalar_t__,int *) ;
 scalar_t__ svn_fspath__skip_ancestor (char const*,char const*) ;
 TYPE_4__* svn_mergeinfo_diff2 (int **,int **,int *,int *,int ,int *,int *) ;
 int svn_mergeinfo_inherited ;
 TYPE_4__* svn_mergeinfo_merge2 (int *,int *,int *,int *) ;
 scalar_t__ svn_tristate_false ;

__attribute__((used)) static svn_error_t *
get_merged_mergeinfo(apr_hash_t **merged_mergeinfo,
                     svn_repos_t *repos,
                     struct path_revision *old_path_rev,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  apr_hash_t *curr_mergeinfo, *prev_mergeinfo, *deleted, *changed;
  svn_error_t *err;
  svn_fs_root_t *root, *prev_root;
  const char *start_path = old_path_rev->path;
  const char *path = ((void*)0);

  svn_fs_path_change_iterator_t *iterator;
  svn_fs_path_change3_t *change;



  SVN_ERR(svn_fs_revision_root(&root, repos->fs, old_path_rev->revnum,
                               scratch_pool));
  SVN_ERR(svn_fs_paths_changed3(&iterator, root, scratch_pool, scratch_pool));
  SVN_ERR(svn_fs_path_change_get(&change, iterator));



  while (change)
    {
      if ( change->prop_mod
          && change->mergeinfo_mod != svn_tristate_false
          && svn_fspath__skip_ancestor(change->path.data, start_path))
        {
          if (!path || svn_fspath__skip_ancestor(path, change->path.data))
            path = apr_pstrmemdup(scratch_pool, change->path.data,
                                  change->path.len);
        }

      SVN_ERR(svn_fs_path_change_get(&change, iterator));
    }

  if (path == ((void*)0))
    {
      *merged_mergeinfo = ((void*)0);
      return SVN_NO_ERROR;
    }






  err = svn_fs__get_mergeinfo_for_path(&curr_mergeinfo,
                                       root, old_path_rev->path,
                                       svn_mergeinfo_inherited, TRUE,
                                       scratch_pool, scratch_pool);
  if (err)
    {
      if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
        {



          svn_error_clear(err);
          *merged_mergeinfo = ((void*)0);
          return SVN_NO_ERROR;
        }
      else
        {
          return svn_error_trace(err);
        }
    }

  SVN_ERR(svn_fs_revision_root(&prev_root, repos->fs, old_path_rev->revnum - 1,
                               scratch_pool));
  err = svn_fs__get_mergeinfo_for_path(&prev_mergeinfo,
                                       prev_root, old_path_rev->path,
                                       svn_mergeinfo_inherited, TRUE,
                                       scratch_pool, scratch_pool);
  if (err && (err->apr_err == SVN_ERR_FS_NOT_FOUND
              || err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR))
    {


      svn_error_clear(err);
      *merged_mergeinfo = ((void*)0);
      return SVN_NO_ERROR;
    }
  else
    SVN_ERR(err);



  SVN_ERR(svn_mergeinfo_diff2(&deleted, &changed, prev_mergeinfo,
                              curr_mergeinfo, FALSE, result_pool,
                              scratch_pool));
  SVN_ERR(svn_mergeinfo_merge2(changed, deleted, result_pool, scratch_pool));


  if (apr_hash_count(changed))
    *merged_mergeinfo = changed;
  else
    *merged_mergeinfo = ((void*)0);

  return SVN_NO_ERROR;
}
