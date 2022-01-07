
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct edit_baton {int ra_session; int revision; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int svn_ra_check_path (int ,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
fetch_kind_func(svn_node_kind_t *kind,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;

  if (!SVN_IS_VALID_REVNUM(base_revision))
    base_revision = eb->revision;

  SVN_ERR(svn_ra_check_path(eb->ra_session, path, base_revision, kind,
                            scratch_pool));

  return SVN_NO_ERROR;
}
