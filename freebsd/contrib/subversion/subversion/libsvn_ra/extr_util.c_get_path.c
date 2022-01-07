
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 char const* _ (char*) ;
 int svn_error_clear (int *) ;
 int * svn_ra_get_session_url (int *,char const**,int *) ;

__attribute__((used)) static const char *
get_path(const char *path_or_url,
         svn_ra_session_t *ra_session,
         apr_pool_t *pool)
{
  if (path_or_url == ((void*)0))
    {
      svn_error_t *err = svn_ra_get_session_url(ra_session, &path_or_url,
                                                pool);
      if (err)
        {


          svn_error_clear(err);
          return _("<repository>");
        }
    }
  return path_or_url;
}
