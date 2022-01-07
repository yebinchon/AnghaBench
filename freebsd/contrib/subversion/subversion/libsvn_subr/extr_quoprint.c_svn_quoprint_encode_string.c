
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_pool_t ;


 int encode_bytes (TYPE_1__*,int ,int ,int*) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

svn_stringbuf_t *
svn_quoprint_encode_string(const svn_stringbuf_t *str, apr_pool_t *pool)
{
  svn_stringbuf_t *encoded = svn_stringbuf_create_empty(pool);
  int linelen = 0;

  encode_bytes(encoded, str->data, str->len, &linelen);
  if (linelen > 0)
    svn_stringbuf_appendcstr(encoded, "=\n");
  return encoded;
}
