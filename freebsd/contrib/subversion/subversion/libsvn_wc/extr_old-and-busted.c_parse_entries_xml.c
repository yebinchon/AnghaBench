
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_xml_parser_t ;
typedef int svn_error_t ;
struct entries_accumulator {int scratch_pool; int * parser; int * pool; int * entries; } ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int apr_psprintf (int *,int ,int ) ;
 int handle_start_tag ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_pool_create (int *) ;
 int svn_pool_destroy (int ) ;
 int svn_xml_free_parser (int *) ;
 int * svn_xml_make_parser (struct entries_accumulator*,int ,int *,int *,int *) ;
 int svn_xml_parse (int *,char const*,int ,int ) ;

__attribute__((used)) static svn_error_t *
parse_entries_xml(const char *dir_abspath,
                  apr_hash_t *entries,
                  const char *buf,
                  apr_size_t size,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_xml_parser_t *svn_parser;
  struct entries_accumulator accum;


  accum.entries = entries;
  accum.pool = result_pool;
  accum.scratch_pool = svn_pool_create(scratch_pool);


  svn_parser = svn_xml_make_parser(&accum,
                                   handle_start_tag,
                                   ((void*)0),
                                   ((void*)0),
                                   scratch_pool);



  accum.parser = svn_parser;


  SVN_ERR_W(svn_xml_parse(svn_parser, buf, size, TRUE),
            apr_psprintf(scratch_pool,
                         _("XML parser failed in '%s'"),
                         svn_dirent_local_style(dir_abspath, scratch_pool)));

  svn_pool_destroy(accum.scratch_pool);


  svn_xml_free_parser(svn_parser);

  return SVN_NO_ERROR;
}
