
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVNSYNC_PROP_LOCK ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_RA_CAPABILITY_ATOMIC_REVPROPS ;
 int _ (char*) ;
 int check_cancel ;
 int lock_retry_func ;
 int stderr ;
 int * svn_cmdline_printf (int *,int ,int ) ;
 int svn_error_clear (int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_handle_warning2 (int ,int *,char*) ;
 int * svn_ra__get_operational_lock (TYPE_1__ const**,TYPE_1__ const**,int *,int ,int ,int,int ,int *,int ,int *,int *) ;
 int svn_ra_has_capability (int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_lock(const svn_string_t **lock_string_p,
         svn_ra_session_t *session,
         svn_boolean_t steal_lock,
         apr_pool_t *pool)
{
  svn_error_t *err;
  svn_boolean_t be_atomic;
  const svn_string_t *stolen_lock;

  SVN_ERR(svn_ra_has_capability(session, &be_atomic,
                                SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                pool));
  if (! be_atomic)
    {



      err = svn_error_create(
              SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
              _("Target server does not support atomic revision property "
                "edits; consider upgrading it to 1.7 or using an external "
                "locking program"));
      svn_handle_warning2(stderr, err, "svnsync: ");
      svn_error_clear(err);
    }

  err = svn_ra__get_operational_lock(lock_string_p, &stolen_lock, session,
                                     SVNSYNC_PROP_LOCK, steal_lock,
                                     10 , lock_retry_func, ((void*)0),
                                     check_cancel, ((void*)0), pool);
  if (!err && stolen_lock)
    {
      return svn_cmdline_printf(pool,
                                _("Stole lock previously held by '%s'\n"),
                                stolen_lock->data);
    }
  return err;
}
