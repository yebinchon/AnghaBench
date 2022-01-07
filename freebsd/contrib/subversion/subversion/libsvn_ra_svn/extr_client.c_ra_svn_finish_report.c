
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int pool; int conn; int edit_baton; int editor; int sess_baton; } ;
typedef TYPE_1__ ra_svn_reporter_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int handle_auth_request (int ,int ) ;
 int svn_ra_svn__read_cmd_response (int ,int ,char*) ;
 int svn_ra_svn__write_cmd_finish_report (int ,int ) ;
 int svn_ra_svn_drive_editor2 (int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_finish_report(void *baton,
                                         apr_pool_t *pool)
{
  ra_svn_reporter_baton_t *b = baton;

  SVN_ERR(svn_ra_svn__write_cmd_finish_report(b->conn, b->pool));
  SVN_ERR(handle_auth_request(b->sess_baton, b->pool));
  SVN_ERR(svn_ra_svn_drive_editor2(b->conn, b->pool, b->editor, b->edit_baton,
                                   ((void*)0), FALSE));
  SVN_ERR(svn_ra_svn__read_cmd_response(b->conn, b->pool, ""));
  return SVN_NO_ERROR;
}
