
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 char const* apr_ltoa (int *,int ) ;
 char const* svn_cl__node_kind_str_xml (scalar_t__) ;
 int svn_hash_sets (int *,char*,char const*) ;
 scalar_t__ svn_node_unknown ;
 int svn_xml_make_open_tag_hash (int **,int *,int ,char*,int *) ;
 int svn_xml_self_closing ;

__attribute__((used)) static svn_error_t *
add_conflict_version_xml(svn_stringbuf_t **pstr,
                         const char *side,
                         const char *repos_root_url,
                         const char *repos_relpath,
                         svn_revnum_t peg_rev,
                         svn_node_kind_t node_kind,
                         apr_pool_t *pool)
{
  apr_hash_t *att_hash = apr_hash_make(pool);


  svn_hash_sets(att_hash, "side", side);

  if (repos_root_url)
    svn_hash_sets(att_hash, "repos-url", repos_root_url);

  if (repos_relpath)
    svn_hash_sets(att_hash, "path-in-repos", repos_relpath);

  if (SVN_IS_VALID_REVNUM(peg_rev))
    svn_hash_sets(att_hash, "revision", apr_ltoa(pool, peg_rev));

  if (node_kind != svn_node_unknown)
    svn_hash_sets(att_hash, "kind", svn_cl__node_kind_str_xml(node_kind));

  svn_xml_make_open_tag_hash(pstr, pool, svn_xml_self_closing,
                             "version", att_hash);
  return SVN_NO_ERROR;
}
