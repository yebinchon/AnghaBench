
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_txn_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_editor_t ;
struct edit_baton {int * txn; scalar_t__ completed; } ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_FS_CONFLICT ;
 int SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_1__* SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 TYPE_1__* svn_editor_complete (int *) ;
 struct edit_baton* svn_editor_get_baton (int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_compose_create (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_create (int ,int *,int *) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_fs_abort_txn (int *,int *) ;
 TYPE_1__* svn_fs_commit_txn (char const**,int *,int *,int *) ;

svn_error_t *
svn_fs__editor_commit(svn_revnum_t *revision,
                      svn_error_t **post_commit_err,
                      const char **conflict_path,
                      svn_editor_t *editor,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = svn_editor_get_baton(editor);
  const char *inner_conflict_path;
  svn_error_t *err = ((void*)0);


  if (eb->completed)
    return svn_error_create(SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION,
                            ((void*)0), ((void*)0));

  *revision = SVN_INVALID_REVNUM;
  *post_commit_err = ((void*)0);
  *conflict_path = ((void*)0);



  err = svn_editor_complete(editor);
  if (err)
    {
      svn_fs_txn_t *txn = eb->txn;

      eb->txn = ((void*)0);
      return svn_error_trace(svn_error_compose_create(
                  err,
                  svn_fs_abort_txn(txn, scratch_pool)));
    }





  err = svn_fs_commit_txn(&inner_conflict_path,
                          revision,
                          eb->txn,
                          scratch_pool);
  if (SVN_IS_VALID_REVNUM(*revision))
    {
      if (err)
        {



          *post_commit_err = err;
          err = SVN_NO_ERROR;
        }

    }
  else
    {
      SVN_ERR_ASSERT(err != ((void*)0));
      if (err->apr_err == SVN_ERR_FS_CONFLICT)
        {



          *conflict_path = apr_pstrdup(result_pool, inner_conflict_path);



          svn_error_clear(err);
          err = SVN_NO_ERROR;
        }




      err = svn_error_compose_create(
        err,
        svn_fs_abort_txn(eb->txn, scratch_pool));
    }


  eb->txn = ((void*)0);

  return svn_error_trace(err);
}
