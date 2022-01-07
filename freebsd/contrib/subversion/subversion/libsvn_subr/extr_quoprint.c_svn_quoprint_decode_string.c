
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_pool_t ;


 int decode_bytes (TYPE_1__*,int ,int ,char*,int*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

svn_stringbuf_t *
svn_quoprint_decode_string(const svn_stringbuf_t *str, apr_pool_t *pool)
{
  svn_stringbuf_t *decoded = svn_stringbuf_create_empty(pool);
  char ingroup[4];
  int ingrouplen = 0;

  decode_bytes(decoded, str->data, str->len, ingroup, &ingrouplen);
  return decoded;
}
