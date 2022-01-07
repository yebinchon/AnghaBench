
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
 int check_for_error (int ,int *) ;
 int svn_ra_svn__write_cmd_close_file (int ,int *,int ,char const*) ;

__attribute__((used)) static svn_error_t *ra_svn_close_file(void *file_baton,
                                      const char *text_checksum,
                                      apr_pool_t *pool)
{
  ra_svn_baton_t *b = file_baton;

  SVN_ERR(check_for_error(b->eb, pool));
  SVN_ERR(svn_ra_svn__write_cmd_close_file(b->conn, pool,
                                           b->token, text_checksum));
  return SVN_NO_ERROR;
}
