
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int * (* svn_repos_verify_callback_t ) (void*,int ,int *,int *) ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int svn_error_clear (int *) ;
 int * svn_error_trace (int *) ;

__attribute__((used)) static svn_error_t *
report_error(svn_revnum_t revision,
             svn_error_t *verify_err,
             svn_repos_verify_callback_t verify_callback,
             void *verify_baton,
             apr_pool_t *pool)
{
  if (verify_callback)
    {
      svn_error_t *cb_err;



      cb_err = verify_callback(verify_baton, revision, verify_err, pool);
      svn_error_clear(verify_err);
      SVN_ERR(cb_err);

      return SVN_NO_ERROR;
    }
  else
    {

      return svn_error_trace(verify_err);
    }
}
