
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_membuf_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_ssize_t ;
typedef scalar_t__ apr_size_t ;


 int SVN_ERR_UTF8PROC_ERROR ;
 int * SVN_NO_ERROR ;
 int gettext (int ) ;
 int * svn_error_create (int ,int *,int ) ;
 scalar_t__ unicode_decomposition (int ,char const*,scalar_t__,int *) ;
 int utf8proc_errmsg (scalar_t__) ;

__attribute__((used)) static svn_error_t *
decompose_normalized(apr_size_t *result_length,
                     const char *string, apr_size_t length,
                     svn_membuf_t *buffer)
{
  apr_ssize_t result = unicode_decomposition(0, string, length, buffer);
  if (result < 0)
    return svn_error_create(SVN_ERR_UTF8PROC_ERROR, ((void*)0),
                            gettext(utf8proc_errmsg(result)));
  *result_length = result;
  return SVN_NO_ERROR;
}
