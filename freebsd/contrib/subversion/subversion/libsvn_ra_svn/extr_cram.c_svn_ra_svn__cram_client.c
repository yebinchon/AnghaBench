
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int hex ;
typedef int apr_pool_t ;


 int APR_MD5_DIGESTSIZE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_NOT_AUTHORIZED ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_psprintf (int *,char*,char const*,char*) ;
 int compute_digest (unsigned char*,char const*,char const*) ;
 int hex_encode (char*,unsigned char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_ra_svn__read_tuple (int *,int *,char*,char const**,char const**) ;
 int svn_ra_svn__write_cstring (int *,int *,char const*) ;

svn_error_t *svn_ra_svn__cram_client(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                     const char *user, const char *password,
                                     const char **message)
{
  const char *status, *str, *reply;
  unsigned char digest[APR_MD5_DIGESTSIZE];
  char hex[2 * APR_MD5_DIGESTSIZE + 1];


  SVN_ERR(svn_ra_svn__read_tuple(conn, pool, "w(?c)", &status, &str));
  if (strcmp(status, "failure") == 0 && str)
    {
      *message = str;
      return SVN_NO_ERROR;
    }
  else if (strcmp(status, "step") != 0 || !str)
    return svn_error_create(SVN_ERR_RA_NOT_AUTHORIZED, ((void*)0),
                            _("Unexpected server response to authentication"));


  compute_digest(digest, str, password);
  hex_encode(hex, digest);
  hex[sizeof(hex) - 1] = '\0';
  reply = apr_psprintf(pool, "%s %s", user, hex);
  SVN_ERR(svn_ra_svn__write_cstring(conn, pool, reply));


  SVN_ERR(svn_ra_svn__read_tuple(conn, pool, "w(?c)", &status, &str));
  if (strcmp(status, "failure") == 0 && str)
    {
      *message = str;
      return SVN_NO_ERROR;
    }
  else if (strcmp(status, "success") != 0 || str)
    return svn_error_create(SVN_ERR_RA_NOT_AUTHORIZED, ((void*)0),
                            _("Unexpected server response to authentication"));

  *message = ((void*)0);
  return SVN_NO_ERROR;
}
