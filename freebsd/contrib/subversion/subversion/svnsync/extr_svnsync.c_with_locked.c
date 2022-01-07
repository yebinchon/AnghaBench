
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * (* with_locked_func_t ) (int *,int *,int *) ;
typedef int svn_string_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int subcommand_baton_t ;
typedef int apr_pool_t ;


 int SVNSYNC_PROP_LOCK ;
 int SVN_ERR (int ) ;
 int get_lock (int const**,int *,int ,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_ra__release_operational_lock (int *,int ,int const*,int *) ;

__attribute__((used)) static svn_error_t *
with_locked(svn_ra_session_t *session,
            with_locked_func_t func,
            subcommand_baton_t *baton,
            svn_boolean_t steal_lock,
            apr_pool_t *pool)
{
  const svn_string_t *lock_string;
  svn_error_t *err;

  SVN_ERR(get_lock(&lock_string, session, steal_lock, pool));

  err = func(session, baton, pool);
  return svn_error_compose_create(err,
             svn_ra__release_operational_lock(session, SVNSYNC_PROP_LOCK,
                                              lock_string, pool));
}
