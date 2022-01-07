
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct check_url_kind_baton {int session; int should_reparent; int repos_root_url; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_node_none ;
 int svn_ra_check_path (int ,char*,int ,int *,int *) ;
 int svn_ra_reparent (int ,char const*,int *) ;
 int svn_uri__is_ancestor (int ,char const*) ;

__attribute__((used)) static svn_error_t *
check_url_kind(void *baton,
               svn_node_kind_t *kind,
               const char *url,
               svn_revnum_t revision,
               apr_pool_t *scratch_pool)
{
  struct check_url_kind_baton *cukb = baton;


  if (!svn_uri__is_ancestor(cukb->repos_root_url, url))
    *kind = svn_node_none;
  else
    {
      cukb->should_reparent = TRUE;

      SVN_ERR(svn_ra_reparent(cukb->session, url, scratch_pool));

      SVN_ERR(svn_ra_check_path(cukb->session, "", revision,
                                kind, scratch_pool));
    }

  return SVN_NO_ERROR;
}
