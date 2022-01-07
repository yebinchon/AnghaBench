
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int token; int conn; int eb; } ;
typedef TYPE_1__ ra_svn_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SVN_CAP_ABSENT_ENTRIES ;
 int check_for_error (int ,int *) ;
 int svn_ra_svn__write_cmd_absent_file (int ,int *,char const*,int ) ;
 int svn_ra_svn_has_capability (int ,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_absent_file(const char *path,
                                       void *parent_baton, apr_pool_t *pool)
{
  ra_svn_baton_t *b = parent_baton;



  if (! svn_ra_svn_has_capability(b->conn, SVN_RA_SVN_CAP_ABSENT_ENTRIES))
    return SVN_NO_ERROR;

  SVN_ERR(check_for_error(b->eb, pool));
  SVN_ERR(svn_ra_svn__write_cmd_absent_file(b->conn, pool, path, b->token));
  return SVN_NO_ERROR;
}
