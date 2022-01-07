
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int * aborted; int tokens; int done; int edit_baton; TYPE_1__* editor; } ;
typedef TYPE_2__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int (* close_edit ) (int ,int *) ;} ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ apr_hash_count (int ) ;
 int stub1 (int ,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_ra_svn__write_cmd_response (int *,int *,char*) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_close_edit(svn_ra_svn_conn_t *conn,
                         apr_pool_t *pool,
                         const svn_ra_svn__list_t *params,
                         ra_svn_driver_state_t *ds)
{
  SVN_CMD_ERR(ds->editor->close_edit(ds->edit_baton, pool));
  ds->done = TRUE;
  if (ds->aborted)
    *ds->aborted = FALSE;
  return svn_ra_svn__write_cmd_response(conn, pool, "");
}
