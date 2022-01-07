
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * aborted; int done; int for_replay; } ;
typedef TYPE_1__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR_RA_SVN_UNKNOWN_CMD ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_finish_replay(svn_ra_svn_conn_t *conn,
                            apr_pool_t *pool,
                            const svn_ra_svn__list_t *params,
                            ra_svn_driver_state_t *ds)
{
  if (!ds->for_replay)
    return svn_error_createf
      (SVN_ERR_RA_SVN_UNKNOWN_CMD, ((void*)0),
       _("Command 'finish-replay' invalid outside of replays"));
  ds->done = TRUE;
  if (ds->aborted)
    *ds->aborted = FALSE;
  return SVN_NO_ERROR;
}
