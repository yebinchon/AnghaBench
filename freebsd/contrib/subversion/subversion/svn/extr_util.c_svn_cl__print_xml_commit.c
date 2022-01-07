
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int apr_pool_t ;


 int SVN_VA_NULL ;
 int apr_psprintf (int *,char*,int ) ;
 int svn_cl__xml_tagged_cdata (int **,int *,char*,char const*) ;
 int svn_xml_make_close_tag (int **,int *,char*) ;
 int svn_xml_make_open_tag (int **,int *,int ,char*,char*,int ,int ) ;
 int svn_xml_normal ;

void
svn_cl__print_xml_commit(svn_stringbuf_t **sb,
                         svn_revnum_t revision,
                         const char *author,
                         const char *date,
                         apr_pool_t *pool)
{

  svn_xml_make_open_tag(sb, pool, svn_xml_normal, "commit",
                        "revision",
                        apr_psprintf(pool, "%ld", revision), SVN_VA_NULL);


  if (author)
    svn_cl__xml_tagged_cdata(sb, pool, "author", author);


  if (date)
    svn_cl__xml_tagged_cdata(sb, pool, "date", date);


  svn_xml_make_close_tag(sb, pool, "commit");
}
