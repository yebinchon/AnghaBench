
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int (* svn_repos_authz_func_t ) (int *,int *,int ,void*,int *) ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_history_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct path_info {int * newpool; int * oldpool; int * hist; void* done; TYPE_1__* path; int history_rev; scalar_t__ first_time; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int data; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int svn_fs_history_location (char const**,int *,int *,int *) ;
 int svn_fs_history_prev2 (int **,int *,int,int *,int *) ;
 int svn_fs_node_history2 (int **,int *,int ,int *,int *) ;
 int svn_fs_revision_root (int **,int *,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stringbuf_set (TYPE_1__*,char const*) ;

__attribute__((used)) static svn_error_t *
get_history(struct path_info *info,
            svn_fs_t *fs,
            svn_boolean_t strict,
            svn_repos_authz_func_t authz_read_func,
            void *authz_read_baton,
            svn_revnum_t start,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  svn_fs_root_t *history_root = ((void*)0);
  svn_fs_history_t *hist;
  apr_pool_t *subpool;
  const char *path;

  if (info->hist)
    {
      subpool = info->newpool;

      SVN_ERR(svn_fs_history_prev2(&info->hist, info->hist, ! strict,
                                   subpool, scratch_pool));

      hist = info->hist;
    }
  else
    {
      subpool = svn_pool_create(result_pool);


      SVN_ERR(svn_fs_revision_root(&history_root, fs, info->history_rev,
                                   subpool));

      SVN_ERR(svn_fs_node_history2(&hist, history_root, info->path->data,
                                   subpool, scratch_pool));

      SVN_ERR(svn_fs_history_prev2(&hist, hist, ! strict, subpool,
                                   scratch_pool));

      if (info->first_time)
        info->first_time = FALSE;
      else
        SVN_ERR(svn_fs_history_prev2(&hist, hist, ! strict, subpool,
                                     scratch_pool));
    }

  if (! hist)
    {
      svn_pool_destroy(subpool);
      if (info->oldpool)
        svn_pool_destroy(info->oldpool);
      info->done = TRUE;
      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_fs_history_location(&path, &info->history_rev,
                                  hist, subpool));

  svn_stringbuf_set(info->path, path);



  if (info->history_rev < start)
    {
      svn_pool_destroy(subpool);
      if (info->oldpool)
        svn_pool_destroy(info->oldpool);
      info->done = TRUE;
      return SVN_NO_ERROR;
    }


  if (authz_read_func)
    {
      svn_boolean_t readable;
      SVN_ERR(svn_fs_revision_root(&history_root, fs,
                                   info->history_rev,
                                   scratch_pool));
      SVN_ERR(authz_read_func(&readable, history_root,
                              info->path->data,
                              authz_read_baton,
                              scratch_pool));
      if (! readable)
        info->done = TRUE;
    }

  if (! info->hist)
    {
      svn_pool_destroy(subpool);
    }
  else
    {
      apr_pool_t *temppool = info->oldpool;
      info->oldpool = info->newpool;
      svn_pool_clear(temppool);
      info->newpool = temppool;
    }

  return SVN_NO_ERROR;
}
