
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const svn_repos_parse_fns3_t ;
typedef int apr_pool_t ;


 int SET_VTABLE_ENTRY (int const*,int const*,int ) ;
 int apply_textdelta ;
 int const* apr_pcalloc (int *,int) ;
 int close_node ;
 int close_revision ;
 int delete_node_property ;
 int magic_header_record ;
 int new_node_record ;
 int new_revision_record ;
 int remove_node_props ;
 int set_fulltext ;
 int set_node_property ;
 int set_revision_property ;
 int uuid_record ;

__attribute__((used)) static const svn_repos_parse_fns3_t *
complete_vtable(const svn_repos_parse_fns3_t *provided,
                apr_pool_t *result_pool)
{
  svn_repos_parse_fns3_t *completed = apr_pcalloc(result_pool,
                                                  sizeof(*completed));

  SET_VTABLE_ENTRY(completed, provided, magic_header_record);
  SET_VTABLE_ENTRY(completed, provided, uuid_record);
  SET_VTABLE_ENTRY(completed, provided, new_revision_record);
  SET_VTABLE_ENTRY(completed, provided, new_node_record);
  SET_VTABLE_ENTRY(completed, provided, set_revision_property);
  SET_VTABLE_ENTRY(completed, provided, set_node_property);
  SET_VTABLE_ENTRY(completed, provided, delete_node_property);
  SET_VTABLE_ENTRY(completed, provided, remove_node_props);
  SET_VTABLE_ENTRY(completed, provided, set_fulltext);
  SET_VTABLE_ENTRY(completed, provided, apply_textdelta);
  SET_VTABLE_ENTRY(completed, provided, close_node);
  SET_VTABLE_ENTRY(completed, provided, close_revision);

  return completed;
}
