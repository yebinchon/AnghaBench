
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVNRDUMP_PROP_LOCK ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_RA_CAPABILITY_ATOMIC_REVPROPS ;
 int _ (char*) ;
 int lock_retry_func ;
 int stderr ;
 int svn_error_clear (int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_handle_warning2 (int ,int *,char*) ;
 int * svn_ra__get_operational_lock (int const**,int *,int *,int ,int ,int,int ,int *,int ,void*,int *) ;
 int svn_ra_has_capability (int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_lock(const svn_string_t **lock_string_p,
         svn_ra_session_t *session,
         svn_cancel_func_t cancel_func,
         void *cancel_baton,
         apr_pool_t *pool)
{
  svn_boolean_t be_atomic;

  SVN_ERR(svn_ra_has_capability(session, &be_atomic,
                                SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                pool));
  if (! be_atomic)
    {

      svn_error_t *err =
        svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                         _("Target server does not support atomic revision "
                           "property edits; consider upgrading it to 1.7."));
      svn_handle_warning2(stderr, err, "svnrdump: ");
      svn_error_clear(err);
    }

  return svn_ra__get_operational_lock(lock_string_p, ((void*)0), session,
                                      SVNRDUMP_PROP_LOCK, FALSE,
                                      10 , lock_retry_func, ((void*)0),
                                      cancel_func, cancel_baton, pool);
}
