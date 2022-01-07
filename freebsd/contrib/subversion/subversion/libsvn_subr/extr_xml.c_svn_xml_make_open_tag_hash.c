
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef enum svn_xml_open_tag_style { ____Placeholder_svn_xml_open_tag_style } svn_xml_open_tag_style ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int assert (int ) ;
 scalar_t__ strlen (char const*) ;
 int svn_stringbuf_appendcstr (int *,char const*) ;
 int * svn_stringbuf_create_ensure (scalar_t__,int *) ;
 int svn_xml_escape_attr_cstring (int **,void*,int *) ;
 int svn_xml_protect_pcdata ;
 int svn_xml_self_closing ;

void
svn_xml_make_open_tag_hash(svn_stringbuf_t **str,
                           apr_pool_t *pool,
                           enum svn_xml_open_tag_style style,
                           const char *tagname,
                           apr_hash_t *attributes)
{
  apr_hash_index_t *hi;
  apr_size_t est_size = strlen(tagname) + 4 + apr_hash_count(attributes) * 30;

  if (*str == ((void*)0))
    *str = svn_stringbuf_create_ensure(est_size, pool);

  svn_stringbuf_appendcstr(*str, "<");
  svn_stringbuf_appendcstr(*str, tagname);

  for (hi = apr_hash_first(pool, attributes); hi; hi = apr_hash_next(hi))
    {
      const void *key;
      void *val;

      apr_hash_this(hi, &key, ((void*)0), &val);
      assert(val != ((void*)0));

      svn_stringbuf_appendcstr(*str, "\n   ");
      svn_stringbuf_appendcstr(*str, key);
      svn_stringbuf_appendcstr(*str, "=\"");
      svn_xml_escape_attr_cstring(str, val, pool);
      svn_stringbuf_appendcstr(*str, "\"");
    }

  if (style == svn_xml_self_closing)
    svn_stringbuf_appendcstr(*str, "/");
  svn_stringbuf_appendcstr(*str, ">");
  if (style != svn_xml_protect_pcdata)
    svn_stringbuf_appendcstr(*str, "\n");
}
