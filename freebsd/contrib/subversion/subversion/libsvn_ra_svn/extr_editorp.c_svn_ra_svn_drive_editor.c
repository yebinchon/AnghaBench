
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_ra_svn_drive_editor2 (int *,int *,int const*,void*,int *,int ) ;

svn_error_t *svn_ra_svn_drive_editor(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                     const svn_delta_editor_t *editor,
                                     void *edit_baton,
                                     svn_boolean_t *aborted)
{
  return svn_ra_svn_drive_editor2(conn,
                                  pool,
                                  editor,
                                  edit_baton,
                                  aborted,
                                  FALSE);
}
