
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int callback_baton; int (* callback ) (int ) ;int conn; scalar_t__ got_status; } ;
typedef TYPE_1__ ra_svn_edit_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int stub1 (int ) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_ra_svn__read_cmd_response (int ,int *,char*) ;
 int svn_ra_svn__write_cmd_abort_edit (int ,int *) ;
 int svn_ra_svn__write_cmd_close_edit (int ,int *) ;

__attribute__((used)) static svn_error_t *ra_svn_close_edit(void *edit_baton, apr_pool_t *pool)
{
  ra_svn_edit_baton_t *eb = edit_baton;
  svn_error_t *err;

  SVN_ERR_ASSERT(!eb->got_status);
  eb->got_status = TRUE;
  SVN_ERR(svn_ra_svn__write_cmd_close_edit(eb->conn, pool));
  err = svn_error_trace(svn_ra_svn__read_cmd_response(eb->conn, pool, ""));
  if (err)
    {
      return svn_error_compose_create(
                    err,
                    svn_error_trace(
                        svn_ra_svn__write_cmd_abort_edit(eb->conn, pool)));
    }
  if (eb->callback)
    SVN_ERR(eb->callback(eb->callback_baton));
  return SVN_NO_ERROR;
}
