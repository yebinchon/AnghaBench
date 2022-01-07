
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_pool_t ;


 int svn_xml_make_header2 (int **,int *,int *) ;

void
svn_xml_make_header(svn_stringbuf_t **str, apr_pool_t *pool)
{
  svn_xml_make_header2(str, ((void*)0), pool);
}
