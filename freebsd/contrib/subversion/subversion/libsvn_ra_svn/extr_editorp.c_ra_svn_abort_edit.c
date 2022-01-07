
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int conn; scalar_t__ got_status; } ;
typedef TYPE_1__ ra_svn_edit_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_ra_svn__read_cmd_response (int ,int *,char*) ;
 int svn_ra_svn__write_cmd_abort_edit (int ,int *) ;

__attribute__((used)) static svn_error_t *ra_svn_abort_edit(void *edit_baton, apr_pool_t *pool)
{
  ra_svn_edit_baton_t *eb = edit_baton;

  if (eb->got_status)
    return SVN_NO_ERROR;
  SVN_ERR(svn_ra_svn__write_cmd_abort_edit(eb->conn, pool));
  SVN_ERR(svn_ra_svn__read_cmd_response(eb->conn, pool, ""));
  return SVN_NO_ERROR;
}
