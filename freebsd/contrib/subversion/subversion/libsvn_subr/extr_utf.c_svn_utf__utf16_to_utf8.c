
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_9__ {int data; } ;
typedef TYPE_2__ svn_membuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int endiancheck ;
typedef int apr_uint16_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;


 scalar_t__ IS_UTF16_LEAD_SURROGATE (int const) ;
 scalar_t__ IS_UTF16_TRAIL_SURROGATE (int const) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_UTF__UNKNOWN_LENGTH ;
 int const SWAP_SHORT (int const) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int membuf_insert_ucs4 (TYPE_2__*,int ,int const) ;
 int svn_membuf__create (TYPE_2__*,int,int *) ;
 int svn_utf__encode_ucs4_string (TYPE_2__*,int ,int,int*) ;

svn_error_t *
svn_utf__utf16_to_utf8(const svn_string_t **result,
                       const apr_uint16_t *utf16str,
                       apr_size_t utf16len,
                       svn_boolean_t big_endian,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  static const apr_uint16_t endiancheck = 0xa55a;
  const svn_boolean_t arch_big_endian =
    (((const char*)&endiancheck)[sizeof(endiancheck) - 1] == '\x5a');
  const svn_boolean_t swap_order = (!big_endian != !arch_big_endian);

  apr_uint16_t lead_surrogate;
  apr_size_t length;
  apr_size_t offset;
  svn_membuf_t ucs4buf;
  svn_membuf_t resultbuf;
  svn_string_t *res;

  if (utf16len == SVN_UTF__UNKNOWN_LENGTH)
    {
      const apr_uint16_t *endp = utf16str;
      while (*endp++)
        ;
      utf16len = (endp - utf16str);
    }

  svn_membuf__create(&ucs4buf, utf16len * sizeof(apr_int32_t), scratch_pool);

  for (lead_surrogate = 0, length = 0, offset = 0;
       offset < utf16len; ++offset)
    {
      const apr_uint16_t code =
        (swap_order ? SWAP_SHORT(utf16str[offset]) : utf16str[offset]);

      if (lead_surrogate)
        {
          if (IS_UTF16_TRAIL_SURROGATE(code))
            {

              membuf_insert_ucs4(&ucs4buf, length++,
                                 (0x010000
                                  + (((lead_surrogate & 0x03ff) << 10)
                                     | (code & 0x03ff))));
              lead_surrogate = 0;
              continue;
            }
          else
            {


              membuf_insert_ucs4(&ucs4buf, length++, lead_surrogate);
              lead_surrogate = 0;
            }
        }

      if ((offset + 1) < utf16len && IS_UTF16_LEAD_SURROGATE(code))
        {


          lead_surrogate = code;
          continue;
        }
      else
        membuf_insert_ucs4(&ucs4buf, length++, code);
    }




  svn_membuf__create(&resultbuf, length * 2, result_pool);
  SVN_ERR(svn_utf__encode_ucs4_string(
              &resultbuf, ucs4buf.data, length, &length));

  res = apr_palloc(result_pool, sizeof(*res));
  res->data = resultbuf.data;
  res->len = length;
  *result = res;
  return SVN_NO_ERROR;
}
