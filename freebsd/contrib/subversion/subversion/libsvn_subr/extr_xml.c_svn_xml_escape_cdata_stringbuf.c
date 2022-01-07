
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_pool_t ;


 int xml_escape_cdata (TYPE_1__**,int ,int ,int *) ;

void
svn_xml_escape_cdata_stringbuf(svn_stringbuf_t **outstr,
                               const svn_stringbuf_t *string,
                               apr_pool_t *pool)
{
  xml_escape_cdata(outstr, string->data, string->len, pool);
}
