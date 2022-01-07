
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_RA_DAV_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 char* apr_strtok (int *,char*,char**) ;
 int * svn_cstring_atoi (int*,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;
 int svn_stringbuf_strip_whitespace (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
parse_status_line(int *status_code_out,
                  const char **reason,
                  const char *status_line,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  const char *token;
  char *tok_status;
  svn_stringbuf_t *temp_buf = svn_stringbuf_create(status_line, scratch_pool);

  svn_stringbuf_strip_whitespace(temp_buf);
  token = apr_strtok(temp_buf->data, " \t\r\n", &tok_status);
  if (token)
    token = apr_strtok(((void*)0), " \t\r\n", &tok_status);
  if (!token)
    return svn_error_createf(SVN_ERR_RA_DAV_MALFORMED_DATA, ((void*)0),
                             _("Malformed DAV:status '%s'"),
                             status_line);
  err = svn_cstring_atoi(status_code_out, token);
  if (err)
    return svn_error_createf(SVN_ERR_RA_DAV_MALFORMED_DATA, err,
                             _("Malformed DAV:status '%s'"),
                             status_line);

  token = apr_strtok(((void*)0), " \t\r\n", &tok_status);

  *reason = apr_pstrdup(result_pool, token);

  return SVN_NO_ERROR;
}
