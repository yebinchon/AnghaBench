
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int eb; int conn; int token; int pool; } ;
typedef TYPE_1__ ra_svn_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_for_error (int ,int ) ;
 int * make_token (char,int ,int *) ;
 void* ra_svn_make_baton (int ,int *,int ,int *) ;
 int svn_ra_svn__write_cmd_open_file (int ,int *,char const*,int ,int *,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_open_file(const char *path,
                                     void *parent_baton,
                                     svn_revnum_t rev,
                                     apr_pool_t *pool,
                                     void **file_baton)
{
  ra_svn_baton_t *b = parent_baton;
  svn_string_t *token = make_token('c', b->eb, pool);

  SVN_ERR(check_for_error(b->eb, b->pool));
  SVN_ERR(svn_ra_svn__write_cmd_open_file(b->conn, pool, path, b->token,
                                          token, rev));
  *file_baton = ra_svn_make_baton(b->conn, pool, b->eb, token);
  return SVN_NO_ERROR;
}
