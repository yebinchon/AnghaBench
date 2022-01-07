
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_9__ {int* data; } ;
typedef TYPE_2__ svn_membuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int endiancheck ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_UTF__UNKNOWN_LENGTH ;
 int SWAP_LONG (int const) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int membuf_insert_ucs4 (TYPE_2__*,int,int const) ;
 int svn_membuf__create (TYPE_2__*,int,int *) ;
 int svn_utf__encode_ucs4_string (TYPE_2__*,int const*,int,int*) ;

svn_error_t *
svn_utf__utf32_to_utf8(const svn_string_t **result,
                       const apr_int32_t *utf32str,
                       apr_size_t utf32len,
                       svn_boolean_t big_endian,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  static const apr_int32_t endiancheck = 0xa5cbbc5a;
  const svn_boolean_t arch_big_endian =
    (((const char*)&endiancheck)[sizeof(endiancheck) - 1] == '\x5a');
  const svn_boolean_t swap_order = (!big_endian != !arch_big_endian);

  apr_size_t length;
  svn_membuf_t resultbuf;
  svn_string_t *res;

  if (utf32len == SVN_UTF__UNKNOWN_LENGTH)
    {
      const apr_int32_t *endp = utf32str;
      while (*endp++)
        ;
      utf32len = (endp - utf32str);
    }

  if (swap_order)
    {
      apr_size_t offset;
      svn_membuf_t ucs4buf;

      svn_membuf__create(&ucs4buf, utf32len * sizeof(apr_int32_t),
                         scratch_pool);

      for (offset = 0; offset < utf32len; ++offset)
        {
          const apr_int32_t code = SWAP_LONG(utf32str[offset]);
          membuf_insert_ucs4(&ucs4buf, offset, code);
        }
      utf32str = ucs4buf.data;
    }




  svn_membuf__create(&resultbuf, utf32len * 2, result_pool);
  SVN_ERR(svn_utf__encode_ucs4_string(
              &resultbuf, utf32str, utf32len, &length));

  res = apr_palloc(result_pool, sizeof(*res));
  res->data = resultbuf.data;
  res->len = length;
  *result = res;
  return SVN_NO_ERROR;
}
