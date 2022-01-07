
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_pool_t ;


 int svn_stringbuf_appendcstr (int *,char const*) ;
 int * svn_stringbuf_create_empty (int *) ;

void svn_xml_make_close_tag(svn_stringbuf_t **str,
                            apr_pool_t *pool,
                            const char *tagname)
{
  if (*str == ((void*)0))
    *str = svn_stringbuf_create_empty(pool);

  svn_stringbuf_appendcstr(*str, "</");
  svn_stringbuf_appendcstr(*str, tagname);
  svn_stringbuf_appendcstr(*str, ">\n");
}
