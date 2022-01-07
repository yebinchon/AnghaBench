
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_ra_change_rev_prop2 (int *,int ,char const*,int *,int const*,int *) ;

svn_error_t *svn_ra_change_rev_prop(svn_ra_session_t *session,
                                    svn_revnum_t rev,
                                    const char *name,
                                    const svn_string_t *value,
                                    apr_pool_t *pool)
{
  return svn_ra_change_rev_prop2(session, rev, name, ((void*)0), value, pool);
}
