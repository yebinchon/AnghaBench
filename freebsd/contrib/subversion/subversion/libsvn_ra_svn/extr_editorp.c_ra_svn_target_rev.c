
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int conn; } ;
typedef TYPE_1__ ra_svn_edit_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_for_error (TYPE_1__*,int *) ;
 int svn_ra_svn__write_cmd_target_rev (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_target_rev(void *edit_baton, svn_revnum_t rev,
                                      apr_pool_t *pool)
{
  ra_svn_edit_baton_t *eb = edit_baton;

  SVN_ERR(check_for_error(eb, pool));
  SVN_ERR(svn_ra_svn__write_cmd_target_rev(eb->conn, pool, rev));
  return SVN_NO_ERROR;
}
