
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int svn_stringbuf_t ;
typedef enum svn_xml_open_tag_style { ____Placeholder_svn_xml_open_tag_style } svn_xml_open_tag_style ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_xml_ap_to_hash (int ,int *) ;
 int svn_xml_make_open_tag_hash (int **,int *,int,char const*,int *) ;

void
svn_xml_make_open_tag_v(svn_stringbuf_t **str,
                        apr_pool_t *pool,
                        enum svn_xml_open_tag_style style,
                        const char *tagname,
                        va_list ap)
{
  apr_pool_t *subpool = svn_pool_create(pool);
  apr_hash_t *ht = svn_xml_ap_to_hash(ap, subpool);

  svn_xml_make_open_tag_hash(str, pool, style, tagname, ht);
  svn_pool_destroy(subpool);
}
