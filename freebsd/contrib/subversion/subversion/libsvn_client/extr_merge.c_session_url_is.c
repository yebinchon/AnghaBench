
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int * svn_ra_get_session_url (int *,char const**,int *) ;

__attribute__((used)) static svn_boolean_t
session_url_is(svn_ra_session_t *ra_session,
               const char *url,
               apr_pool_t *scratch_pool)
{
  const char *session_url;
  svn_error_t *err
    = svn_ra_get_session_url(ra_session, &session_url, scratch_pool);

  SVN_ERR_ASSERT_NO_RETURN(! err);
  return strcmp(url, session_url) == 0;
}
