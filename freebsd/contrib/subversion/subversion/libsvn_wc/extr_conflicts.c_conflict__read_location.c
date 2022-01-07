
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc_conflict_version_t ;
struct TYPE_5__ {int len; int data; struct TYPE_5__* next; scalar_t__ is_atom; struct TYPE_5__* children; } ;
typedef TYPE_1__ svn_skel_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__CONFLICT_SRC_SUBVERSION ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int svn_node_kind_from_word (char const*) ;
 int svn_skel__matches_atom (TYPE_1__ const*,int ) ;
 int svn_skel__parse_int (scalar_t__*,TYPE_1__ const*,int *) ;
 int * svn_wc_conflict_version_create2 (char const*,char const*,char const*,scalar_t__,int ,int *) ;

__attribute__((used)) static svn_error_t *
conflict__read_location(svn_wc_conflict_version_t **location,
                        const svn_skel_t *skel,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *repos_root_url;
  const char *repos_uuid;
  const char *repos_relpath;
  svn_revnum_t revision;
  apr_int64_t v;
  svn_node_kind_t node_kind;
  const char *kind_str;

  const svn_skel_t *c = skel->children;

  if (!svn_skel__matches_atom(c, SVN_WC__CONFLICT_SRC_SUBVERSION))
    {
      *location = ((void*)0);
      return SVN_NO_ERROR;
    }
  c = c->next;

  repos_root_url = apr_pstrmemdup(result_pool, c->data, c->len);
  c = c->next;

  if (c->is_atom)
    repos_uuid = apr_pstrmemdup(result_pool, c->data, c->len);
  else
    repos_uuid = ((void*)0);
  c = c->next;

  repos_relpath = apr_pstrmemdup(result_pool, c->data, c->len);
  c = c->next;

  SVN_ERR(svn_skel__parse_int(&v, c, scratch_pool));
  revision = (svn_revnum_t)v;
  c = c->next;

  kind_str = apr_pstrmemdup(scratch_pool, c->data, c->len);
  node_kind = svn_node_kind_from_word(kind_str);

  *location = svn_wc_conflict_version_create2(repos_root_url,
                                              repos_uuid,
                                              repos_relpath,
                                              revision,
                                              node_kind,
                                              result_pool);
  return SVN_NO_ERROR;
}
