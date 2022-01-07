
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ strlen (char const*) ;
 int xml_escape_cdata (int **,char const*,int ,int *) ;

void
svn_xml_escape_cdata_cstring(svn_stringbuf_t **outstr,
                             const char *string,
                             apr_pool_t *pool)
{
  xml_escape_cdata(outstr, string, (apr_size_t) strlen(string), pool);
}
