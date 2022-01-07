
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct shim_callbacks_baton {int wc_ctx; int relpath_map; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* svn_hash_gets (int ,char const*) ;
 int svn_node_unknown ;
 int svn_wc_read_kind2 (int *,int ,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
fetch_kind_func(svn_node_kind_t *kind,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *scratch_pool)
{
  struct shim_callbacks_baton *scb = baton;
  const char *local_abspath;

  local_abspath = svn_hash_gets(scb->relpath_map, path);
  if (!local_abspath)
    {
      *kind = svn_node_unknown;
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_wc_read_kind2(kind, scb->wc_ctx, local_abspath,
                            TRUE, FALSE, scratch_pool));

  return SVN_NO_ERROR;
}
