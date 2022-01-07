
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int done; } ;
typedef TYPE_1__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_ra_svn__read_tuple (int *,int *,char*,char const**,int **) ;
 int svn_ra_svn__set_block_handler (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *blocked_write(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                  void *baton)
{
  ra_svn_driver_state_t *ds = baton;
  const char *cmd;
  svn_ra_svn__list_t *params;



  SVN_ERR(svn_ra_svn__read_tuple(conn, pool, "wl", &cmd, &params));
  if (strcmp(cmd, "abort-edit") == 0)
    {
      ds->done = TRUE;
      svn_ra_svn__set_block_handler(conn, ((void*)0), ((void*)0));
    }
  return SVN_NO_ERROR;
}
