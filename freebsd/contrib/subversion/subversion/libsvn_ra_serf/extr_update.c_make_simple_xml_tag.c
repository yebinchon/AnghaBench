
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 int svn_xml_escape_cdata_cstring (int **,char const*,int *) ;
 int svn_xml_make_close_tag (int **,int *,char const*) ;
 int svn_xml_make_open_tag (int **,int *,int ,char const*,int ) ;
 int svn_xml_protect_pcdata ;

__attribute__((used)) static void
make_simple_xml_tag(svn_stringbuf_t **buf_p,
                    const char *tagname,
                    const char *cdata,
                    apr_pool_t *pool)
{
  svn_xml_make_open_tag(buf_p, pool, svn_xml_protect_pcdata, tagname,
                        SVN_VA_NULL);
  svn_xml_escape_cdata_cstring(buf_p, cdata, pool);
  svn_xml_make_close_tag(buf_p, pool, tagname);
}
