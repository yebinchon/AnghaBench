
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_pool_t ;


 char* apr_psprintf (int *,char*,char const*) ;
 int svn_stringbuf_appendcstr (int *,char const*) ;
 int * svn_stringbuf_create_empty (int *) ;

void
svn_xml_make_header2(svn_stringbuf_t **str, const char *encoding,
                     apr_pool_t *pool)
{

  if (*str == ((void*)0))
    *str = svn_stringbuf_create_empty(pool);
  svn_stringbuf_appendcstr(*str, "<?xml version=\"1.0\"");
  if (encoding)
    {
      encoding = apr_psprintf(pool, " encoding=\"%s\"", encoding);
      svn_stringbuf_appendcstr(*str, encoding);
    }
  svn_stringbuf_appendcstr(*str, "?>\n");
}
