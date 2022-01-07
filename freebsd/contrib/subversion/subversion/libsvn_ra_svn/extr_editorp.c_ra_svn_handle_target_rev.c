
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int edit_baton; TYPE_1__* editor; } ;
typedef TYPE_2__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int (* set_target_revision ) (int ,int ,int *) ;} ;


 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int ,int *) ;
 int svn_ra_svn__parse_tuple (int const*,char*,int *) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_target_rev(svn_ra_svn_conn_t *conn,
                         apr_pool_t *pool,
                         const svn_ra_svn__list_t *params,
                         ra_svn_driver_state_t *ds)
{
  svn_revnum_t rev;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "r", &rev));
  SVN_CMD_ERR(ds->editor->set_target_revision(ds->edit_baton, rev, pool));
  return SVN_NO_ERROR;
}
