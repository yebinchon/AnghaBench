
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct revision_baton {TYPE_1__* pb; scalar_t__ rev; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int aux_session; } ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int svn_ra_check_path (int ,char const*,scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
fetch_kind_func(svn_node_kind_t *kind,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *scratch_pool)
{
  struct revision_baton *rb = baton;

  if (! SVN_IS_VALID_REVNUM(base_revision))
    base_revision = rb->rev - 1;

  SVN_ERR(svn_ra_check_path(rb->pb->aux_session, path, base_revision,
                            kind, scratch_pool));

  return SVN_NO_ERROR;
}
