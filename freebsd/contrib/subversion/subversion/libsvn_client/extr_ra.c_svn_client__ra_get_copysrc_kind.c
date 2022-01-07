
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct ra_ev2_baton {int wc_ctx; int relpath_map; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_hash_gets (int ,char const*) ;
 int svn_node_unknown ;
 int svn_wc_read_kind2 (int *,int ,char const*,int ,int ,int *) ;

svn_error_t *
svn_client__ra_get_copysrc_kind(svn_node_kind_t *kind,
                                void *baton,
                                const char *repos_relpath,
                                svn_revnum_t src_revision,
                                apr_pool_t *scratch_pool)
{
  struct ra_ev2_baton *reb = baton;
  const char *local_abspath;

  local_abspath = svn_hash_gets(reb->relpath_map, repos_relpath);
  if (!local_abspath)
    {
      *kind = svn_node_unknown;
      return SVN_NO_ERROR;
    }



  SVN_ERR(svn_wc_read_kind2(kind, reb->wc_ctx, local_abspath,
                            FALSE, FALSE, scratch_pool));

  return SVN_NO_ERROR;
}
