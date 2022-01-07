
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_6__ {TYPE_2__* conn; scalar_t__ got_status; } ;
typedef TYPE_1__ ra_svn_edit_baton_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int may_check_for_error; scalar_t__ error_check_interval; scalar_t__ written_since_error_check; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_RA_SVN_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_ra_svn__data_available (TYPE_2__*,scalar_t__*) ;
 int svn_ra_svn__read_cmd_response (TYPE_2__*,int *,char*) ;
 int svn_ra_svn__write_cmd_abort_edit (TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
check_for_error_internal(ra_svn_edit_baton_t *eb, apr_pool_t *pool)
{
  svn_boolean_t available;
  SVN_ERR_ASSERT(!eb->got_status);


  eb->conn->written_since_error_check = 0;


  eb->conn->may_check_for_error = eb->conn->error_check_interval == 0;


  SVN_ERR(svn_ra_svn__data_available(eb->conn, &available));
  if (available)
    {
      eb->got_status = TRUE;
      SVN_ERR(svn_ra_svn__write_cmd_abort_edit(eb->conn, pool));
      SVN_ERR(svn_ra_svn__read_cmd_response(eb->conn, pool, ""));

      return svn_error_create(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                              _("Successful edit status returned too soon"));
    }
  return SVN_NO_ERROR;
}
