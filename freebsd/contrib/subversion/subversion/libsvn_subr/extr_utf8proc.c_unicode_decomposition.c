
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int * data; } ;
typedef TYPE_1__ svn_membuf_t ;
typedef int const apr_ssize_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_int32_t ;


 scalar_t__ SVN_UTF__UNKNOWN_LENGTH ;
 int UTF8PROC_DECOMPOSE ;
 int UTF8PROC_NULLTERM ;
 int UTF8PROC_STABLE ;
 int svn_membuf__ensure (TYPE_1__*,int const) ;
 int utf8proc_decompose (void const*,scalar_t__,int * const,int const,int) ;

__attribute__((used)) static apr_ssize_t
unicode_decomposition(int transform_flags,
                      const char *string, apr_size_t length,
                      svn_membuf_t *buffer)
{
  const int nullterm = (length == SVN_UTF__UNKNOWN_LENGTH
                        ? UTF8PROC_NULLTERM : 0);

  for (;;)
    {
      apr_int32_t *const ucs4buf = buffer->data;
      const apr_ssize_t ucs4len = buffer->size / sizeof(*ucs4buf);
      const apr_ssize_t result =
        utf8proc_decompose((const void*) string, length, ucs4buf, ucs4len,
                           UTF8PROC_DECOMPOSE | UTF8PROC_STABLE
                           | transform_flags | nullterm);

      if (result < 0 || result <= ucs4len)
        return result;


      svn_membuf__ensure(buffer, result * sizeof(*ucs4buf));
    }
}
