
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_operation_t ;
typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_3__ {scalar_t__ nelts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_conflict_version_xml (int **,char*,char const*,char const*,int ,int ,int *) ;
 int append_tree_conflict_info_xml (int *,int *,int *) ;
 int * apr_hash_make (int *) ;
 char* svn_cl__operation_str_xml (int ,int *) ;
 int svn_cl__xml_tagged_cdata (int **,int *,char*,char const*) ;
 int svn_client_conflict_get_conflicted (scalar_t__*,TYPE_1__**,scalar_t__*,int *,int *,int *) ;
 int svn_client_conflict_get_incoming_old_repos_location (char const**,int *,int *,int *,int *,int *) ;
 int svn_client_conflict_get_operation (int *) ;
 int svn_client_conflict_get_repos_info (char const**,int *,int *,int *,int *) ;
 char* svn_client_conflict_prop_get_reject_abspath (int *) ;
 int svn_client_conflict_text_get_contents (int *,char const**,char const**,char const**,int *,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_hash_sets (int *,char*,char*) ;
 int svn_xml_make_close_tag (int **,int *,char*) ;
 int svn_xml_make_open_tag_hash (int **,int *,int ,char*,int *) ;
 int svn_xml_normal ;

svn_error_t *
svn_cl__append_conflict_info_xml(svn_stringbuf_t *str,
                                 svn_client_conflict_t *conflict,
                                 apr_pool_t *scratch_pool)
{
  apr_hash_t *att_hash;
  svn_boolean_t text_conflicted;
  apr_array_header_t *props_conflicted;
  svn_boolean_t tree_conflicted;
  svn_wc_operation_t conflict_operation;
  const char *repos_root_url;
  const char *repos_relpath;
  svn_revnum_t peg_rev;
  svn_node_kind_t node_kind;

  conflict_operation = svn_client_conflict_get_operation(conflict);

  SVN_ERR(svn_client_conflict_get_conflicted(&text_conflicted,
                                             &props_conflicted,
                                             &tree_conflicted,
                                             conflict,
                                             scratch_pool, scratch_pool));
  if (tree_conflicted)
    {

      return svn_error_trace(
                append_tree_conflict_info_xml(str, conflict, scratch_pool));
    }

  SVN_ERR(svn_client_conflict_get_repos_info(&repos_root_url, ((void*)0),
                                             conflict,
                                             scratch_pool, scratch_pool));
  att_hash = apr_hash_make(scratch_pool);

  svn_hash_sets(att_hash, "operation",
                svn_cl__operation_str_xml(conflict_operation, scratch_pool));

  svn_hash_sets(att_hash, "operation",
                svn_cl__operation_str_xml(conflict_operation, scratch_pool));

  if (text_conflicted)
    {
      const char *base_abspath;
      const char *my_abspath;
      const char *their_abspath;

      svn_hash_sets(att_hash, "type", "text");


      svn_xml_make_open_tag_hash(&str, scratch_pool,
                                 svn_xml_normal, "conflict", att_hash);

      SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
                &repos_relpath, &peg_rev, &node_kind, conflict,
                scratch_pool, scratch_pool));
      if (repos_root_url && repos_relpath)
        SVN_ERR(add_conflict_version_xml(&str, "source-left",
                                         repos_root_url, repos_relpath, peg_rev,
                                         node_kind, scratch_pool));

      SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
                &repos_relpath, &peg_rev, &node_kind, conflict,
                scratch_pool, scratch_pool));
      if (repos_root_url && repos_relpath)
        SVN_ERR(add_conflict_version_xml(&str, "source-right",
                                         repos_root_url, repos_relpath, peg_rev,
                                         node_kind, scratch_pool));

      SVN_ERR(svn_client_conflict_text_get_contents(((void*)0), &my_abspath,
                                                    &base_abspath,
                                                    &their_abspath,
                                                    conflict, scratch_pool,
                                                    scratch_pool));

      svn_cl__xml_tagged_cdata(
        &str, scratch_pool, "prev-base-file", base_abspath);


      svn_cl__xml_tagged_cdata(
        &str, scratch_pool, "prev-wc-file", my_abspath);


      svn_cl__xml_tagged_cdata(
        &str, scratch_pool, "cur-base-file", their_abspath);


      svn_xml_make_close_tag(&str, scratch_pool, "conflict");
    }

  if (props_conflicted->nelts > 0)
    {
      const char *reject_abspath;

      svn_hash_sets(att_hash, "type", "property");


      svn_xml_make_open_tag_hash(&str, scratch_pool,
                                 svn_xml_normal, "conflict", att_hash);

      SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
                &repos_relpath, &peg_rev, &node_kind, conflict,
                scratch_pool, scratch_pool));
      if (repos_root_url && repos_relpath)
        SVN_ERR(add_conflict_version_xml(&str, "source-left",
                                         repos_root_url, repos_relpath, peg_rev,
                                         node_kind, scratch_pool));

      SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
                &repos_relpath, &peg_rev, &node_kind, conflict,
                scratch_pool, scratch_pool));
      if (repos_root_url && repos_relpath)
        SVN_ERR(add_conflict_version_xml(&str, "source-right",
                                         repos_root_url, repos_relpath, peg_rev,
                                         node_kind, scratch_pool));


      reject_abspath =
        svn_client_conflict_prop_get_reject_abspath(conflict);
      svn_cl__xml_tagged_cdata(
        &str, scratch_pool, "prop-file", reject_abspath);


      svn_xml_make_close_tag(&str, scratch_pool, "conflict");
    }

  return SVN_NO_ERROR;
}
