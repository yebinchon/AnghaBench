
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (int *) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__discover_vcc (char const**,int *,int *) ;
 int svn_ra_serf__v2_get_youngest_revnum (int *,int *,int *) ;
 int v1_get_youngest_revnum (int *,int *,int *,char const*,int *,int *) ;

svn_error_t *
svn_ra_serf__get_youngest_revnum(svn_revnum_t *youngest,
                                 svn_ra_serf__session_t *session,
                                 apr_pool_t *scratch_pool)
{
  const char *vcc_url;

  if (SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session))
    return svn_error_trace(svn_ra_serf__v2_get_youngest_revnum(
                             youngest, session, scratch_pool));

  SVN_ERR(svn_ra_serf__discover_vcc(&vcc_url, session, scratch_pool));

  return svn_error_trace(v1_get_youngest_revnum(youngest, ((void*)0),
                                                session, vcc_url,
                                                scratch_pool, scratch_pool));
}
