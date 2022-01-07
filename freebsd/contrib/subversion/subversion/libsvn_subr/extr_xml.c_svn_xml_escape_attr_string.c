
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_pool_t ;


 int xml_escape_attr (int **,int ,int ,int *) ;

void
svn_xml_escape_attr_string(svn_stringbuf_t **outstr,
                           const svn_string_t *string,
                           apr_pool_t *pool)
{
  xml_escape_attr(outstr, string->data, string->len, pool);
}
