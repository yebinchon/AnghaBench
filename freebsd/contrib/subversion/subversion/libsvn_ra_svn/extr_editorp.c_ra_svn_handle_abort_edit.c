
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int edit_baton; TYPE_1__* editor; void** aborted; void* done; } ;
typedef TYPE_2__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int (* abort_edit ) (int ,int *) ;} ;


 int SVN_CMD_ERR (int ) ;
 void* TRUE ;
 int stub1 (int ,int *) ;
 int * svn_ra_svn__write_cmd_response (int *,int *,char*) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_abort_edit(svn_ra_svn_conn_t *conn,
                         apr_pool_t *pool,
                         const svn_ra_svn__list_t *params,
                         ra_svn_driver_state_t *ds)
{
  ds->done = TRUE;
  if (ds->aborted)
    *ds->aborted = TRUE;
  SVN_CMD_ERR(ds->editor->abort_edit(ds->edit_baton, pool));
  return svn_ra_svn__write_cmd_response(conn, pool, "");
}
