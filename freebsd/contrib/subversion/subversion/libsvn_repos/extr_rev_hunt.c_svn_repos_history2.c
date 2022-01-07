
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef TYPE_1__* (* svn_repos_history_func_t ) (void*,char const*,scalar_t__,int *) ;
typedef int (* svn_repos_authz_func_t ) (int *,int *,char const*,void*,int *) ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_history_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_AUTHZ_UNREADABLE ;
 scalar_t__ SVN_ERR_CEASE_INVOCATION ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_create (int ,int *,int *) ;
 TYPE_1__* svn_error_createf (int ,int ,int ,scalar_t__) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_fs_history_location (char const**,scalar_t__*,int *,int *) ;
 int svn_fs_history_prev2 (int **,int *,int ,int *,int *) ;
 int svn_fs_node_history2 (int **,int *,char const*,int *,int *) ;
 int svn_fs_revision_root (int **,int *,scalar_t__,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_repos_history2(svn_fs_t *fs,
                   const char *path,
                   svn_repos_history_func_t history_func,
                   void *history_baton,
                   svn_repos_authz_func_t authz_read_func,
                   void *authz_read_baton,
                   svn_revnum_t start,
                   svn_revnum_t end,
                   svn_boolean_t cross_copies,
                   apr_pool_t *pool)
{
  svn_fs_history_t *history;
  apr_pool_t *oldpool = svn_pool_create(pool);
  apr_pool_t *newpool = svn_pool_create(pool);
  const char *history_path;
  svn_revnum_t history_rev;
  svn_fs_root_t *root;


  if (! SVN_IS_VALID_REVNUM(start))
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_REVISION, 0,
       _("Invalid start revision %ld"), start);
  if (! SVN_IS_VALID_REVNUM(end))
    return svn_error_createf
      (SVN_ERR_FS_NO_SUCH_REVISION, 0,
       _("Invalid end revision %ld"), end);


  if (start > end)
    {
      svn_revnum_t tmprev = start;
      start = end;
      end = tmprev;
    }


  SVN_ERR(svn_fs_revision_root(&root, fs, end, pool));

  if (authz_read_func)
    {
      svn_boolean_t readable;
      SVN_ERR(authz_read_func(&readable, root, path,
                              authz_read_baton, pool));
      if (! readable)
        return svn_error_create(SVN_ERR_AUTHZ_UNREADABLE, ((void*)0), ((void*)0));
    }

  SVN_ERR(svn_fs_node_history2(&history, root, path, oldpool, oldpool));


  do
    {



      apr_pool_t *tmppool;
      svn_error_t *err;

      SVN_ERR(svn_fs_history_prev2(&history, history, cross_copies, newpool,
                                   oldpool));


      if (! history)
        break;


      SVN_ERR(svn_fs_history_location(&history_path, &history_rev,
                                      history, newpool));



      if (history_rev < start)
        break;


      if (authz_read_func)
        {
          svn_boolean_t readable;
          svn_fs_root_t *history_root;
          SVN_ERR(svn_fs_revision_root(&history_root, fs,
                                       history_rev, newpool));
          SVN_ERR(authz_read_func(&readable, history_root, history_path,
                                  authz_read_baton, newpool));
          if (! readable)
            break;
        }


      err = history_func(history_baton, history_path, history_rev, newpool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_CEASE_INVOCATION)
            {
              svn_error_clear(err);
              goto cleanup;
            }
          else
            {
              return svn_error_trace(err);
            }
        }



      svn_pool_clear(oldpool);
      tmppool = oldpool;
      oldpool = newpool;
      newpool = tmppool;
    }
  while (history);

 cleanup:
  svn_pool_destroy(oldpool);
  svn_pool_destroy(newpool);
  return SVN_NO_ERROR;
}
