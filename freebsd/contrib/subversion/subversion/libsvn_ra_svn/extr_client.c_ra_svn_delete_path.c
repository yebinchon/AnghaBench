
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int conn; } ;
typedef TYPE_1__ ra_svn_reporter_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_ra_svn__write_cmd_delete_path (int ,int *,char const*) ;

__attribute__((used)) static svn_error_t *ra_svn_delete_path(void *baton, const char *path,
                                       apr_pool_t *pool)
{
  ra_svn_reporter_baton_t *b = baton;

  SVN_ERR(svn_ra_svn__write_cmd_delete_path(b->conn, pool, path));
  return SVN_NO_ERROR;
}
