
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_conflict_version_xml (int **,char*,char const*,char const*,int ,int ,int *) ;
 int * apr_hash_make (int *) ;
 int map_conflict_action_xml ;
 int map_conflict_reason_xml ;
 char const* svn_cl__node_kind_str_xml (int ) ;
 char const* svn_cl__operation_str_xml (int ,int *) ;
 int svn_client_conflict_get_incoming_change (int *) ;
 int svn_client_conflict_get_incoming_old_repos_location (char const**,int *,int *,int *,int *,int *) ;
 int svn_client_conflict_get_local_abspath (int *) ;
 int svn_client_conflict_get_local_change (int *) ;
 int svn_client_conflict_get_operation (int *) ;
 int svn_client_conflict_get_repos_info (char const**,int *,int *,int *,int *) ;
 int svn_client_conflict_tree_get_victim_node_kind (int *) ;
 char const* svn_dirent_basename (int ,int *) ;
 int svn_hash_sets (int *,char*,char const*) ;
 char* svn_token__to_word (int ,int ) ;
 int svn_xml_make_close_tag (int **,int *,char*) ;
 int svn_xml_make_open_tag_hash (int **,int *,int ,char*,int *) ;
 int svn_xml_normal ;

__attribute__((used)) static svn_error_t *
append_tree_conflict_info_xml(svn_stringbuf_t *str,
                              svn_client_conflict_t *conflict,
                              apr_pool_t *pool)
{
  apr_hash_t *att_hash = apr_hash_make(pool);
  const char *tmp;
  const char *repos_root_url;
  const char *repos_relpath;
  svn_revnum_t peg_rev;
  svn_node_kind_t node_kind;

  svn_hash_sets(att_hash, "victim",
                svn_dirent_basename(
                  svn_client_conflict_get_local_abspath(conflict), pool));

  svn_hash_sets(att_hash, "kind",
                svn_cl__node_kind_str_xml(
                  svn_client_conflict_tree_get_victim_node_kind(conflict)));

  svn_hash_sets(att_hash, "operation",
                svn_cl__operation_str_xml(
                  svn_client_conflict_get_operation(conflict), pool));

  tmp = svn_token__to_word(map_conflict_action_xml,
                           svn_client_conflict_get_incoming_change(conflict));
  svn_hash_sets(att_hash, "action", tmp);

  tmp = svn_token__to_word(map_conflict_reason_xml,
                           svn_client_conflict_get_local_change(conflict));
  svn_hash_sets(att_hash, "reason", tmp);


  svn_xml_make_open_tag_hash(&str, pool, svn_xml_normal,
                             "tree-conflict", att_hash);



  SVN_ERR(svn_client_conflict_get_repos_info(&repos_root_url, ((void*)0), conflict,
                                             pool, pool));
  SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(&repos_relpath,
                                                              &peg_rev,
                                                              &node_kind,
                                                              conflict,
                                                              pool,
                                                              pool));
  if (repos_root_url && repos_relpath)
    SVN_ERR(add_conflict_version_xml(&str, "source-left",
                                     repos_root_url, repos_relpath, peg_rev,
                                     node_kind, pool));

  SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(&repos_relpath,
                                                              &peg_rev,
                                                              &node_kind,
                                                              conflict,
                                                              pool,
                                                              pool));
  if (repos_root_url && repos_relpath)
    SVN_ERR(add_conflict_version_xml(&str,
                                     "source-right",
                                     repos_root_url, repos_relpath, peg_rev,
                                     node_kind, pool));

  svn_xml_make_close_tag(&str, pool, "tree-conflict");

  return SVN_NO_ERROR;
}
