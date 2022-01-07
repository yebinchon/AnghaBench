
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* repository; } ;
typedef TYPE_2__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int fs; } ;


 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int log_command (TYPE_2__*,int *,int *,char*) ;
 int svn_fs_youngest_rev (int *,int ,int *) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*,int ) ;
 int trivial_auth_request (int *,int *,TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
get_latest_rev(svn_ra_svn_conn_t *conn,
               apr_pool_t *pool,
               svn_ra_svn__list_t *params,
               void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;

  SVN_ERR(log_command(b, conn, pool, "get-latest-rev"));

  SVN_ERR(trivial_auth_request(conn, pool, b));
  SVN_CMD_ERR(svn_fs_youngest_rev(&rev, b->repository->fs, pool));
  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, "r", rev));
  return SVN_NO_ERROR;
}
