
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_fs_path_change2_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int changed_paths; int deletions; } ;
typedef TYPE_3__ process_changes_baton_t ;
struct TYPE_8__ {int len; char* data; } ;
struct TYPE_7__ {scalar_t__ change_kind; } ;
struct TYPE_10__ {TYPE_2__ path; TYPE_1__ info; } ;
typedef TYPE_4__ change_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int ,void const*,int,int *) ;
 int apr_hash_this (int *,void const**,int*,void**) ;
 int fold_change (int ,int ,TYPE_4__*) ;
 scalar_t__ svn_fs_path_change_delete ;
 scalar_t__ svn_fs_path_change_replace ;
 char* svn_fspath__skip_ancestor (char*,void const*) ;

__attribute__((used)) static svn_error_t *
process_changes(void *baton_p,
                change_t *change,
                apr_pool_t *scratch_pool)
{
  process_changes_baton_t *baton = baton_p;

  SVN_ERR(fold_change(baton->changed_paths, baton->deletions, change));
  if ((change->info.change_kind == svn_fs_path_change_delete)
       || (change->info.change_kind == svn_fs_path_change_replace))
    {
      apr_hash_index_t *hi;






      apr_ssize_t path_len = change->path.len;
      apr_ssize_t min_child_len = path_len == 0
                                ? 1
                                : change->path.data[path_len-1] == '/'
                                    ? path_len + 1
                                    : path_len + 2;





      for (hi = apr_hash_first(scratch_pool, baton->changed_paths);
           hi;
           hi = apr_hash_next(hi))
        {

          const void *path;
          apr_ssize_t klen;
          svn_fs_path_change2_t *old_change;
          apr_hash_this(hi, &path, &klen, (void**)&old_change);





          if (klen >= min_child_len)
            {
              const char *child;

              child = svn_fspath__skip_ancestor(change->path.data, path);
              if (child && child[0] != '\0')
                {
                  apr_hash_set(baton->changed_paths, path, klen, ((void*)0));
                }
            }
        }
    }

  return SVN_NO_ERROR;
}
