
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_ssize_t ;
typedef int apr_size_t ;
typedef int apr_int32_t ;


 int SVN_ERR_UTF8PROC_ERROR ;
 int * SVN_NO_ERROR ;
 int UTF8PROC_CASEFOLD ;
 int UTF8PROC_COMPOSE ;
 int UTF8PROC_STABLE ;
 int UTF8PROC_STRIPMARK ;
 int gettext (int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_membuf__resize (TYPE_1__*,int) ;
 int unicode_decomposition (int,char const*,int,TYPE_1__*) ;
 int utf8proc_errmsg (int) ;
 int utf8proc_reencode (int ,int,int) ;

__attribute__((used)) static svn_error_t *
normalize_cstring(apr_size_t *result_length,
                  const char *string, apr_size_t length,
                  svn_boolean_t casefold,
                  svn_boolean_t stripmark,
                  svn_membuf_t *buffer)
{
  int flags = 0;
  apr_ssize_t result;

  if (casefold)
    flags |= UTF8PROC_CASEFOLD;

  if (stripmark)
    flags |= UTF8PROC_STRIPMARK;

  result = unicode_decomposition(flags, string, length, buffer);
  if (result >= 0)
    {
      svn_membuf__resize(buffer, result * sizeof(apr_int32_t) + 1);
      result = utf8proc_reencode(buffer->data, result,
                                 UTF8PROC_COMPOSE | UTF8PROC_STABLE);
    }
  if (result < 0)
    return svn_error_create(SVN_ERR_UTF8PROC_ERROR, ((void*)0),
                            gettext(utf8proc_errmsg(result)));
  *result_length = result;
  return SVN_NO_ERROR;
}
