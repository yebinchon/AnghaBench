
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int encode_bytes (int *,int ,int ,unsigned char*,size_t*,size_t*,int ) ;
 int encode_partial_group (int *,unsigned char*,size_t,size_t,int ) ;
 TYPE_1__ const* svn_stringbuf__morph_into_string (int *) ;
 int * svn_stringbuf_create_empty (int *) ;

const svn_string_t *
svn_base64_encode_string2(const svn_string_t *str,
                          svn_boolean_t break_lines,
                          apr_pool_t *pool)
{
  svn_stringbuf_t *encoded = svn_stringbuf_create_empty(pool);
  unsigned char ingroup[3];
  size_t ingrouplen = 0;
  size_t linelen = 0;

  encode_bytes(encoded, str->data, str->len, ingroup, &ingrouplen, &linelen,
               break_lines);
  encode_partial_group(encoded, ingroup, ingrouplen, linelen,
                       break_lines);
  return svn_stringbuf__morph_into_string(encoded);
}
