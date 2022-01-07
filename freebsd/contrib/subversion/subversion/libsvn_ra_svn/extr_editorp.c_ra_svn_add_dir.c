
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int eb; int conn; int token; } ;
typedef TYPE_1__ ra_svn_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int check_for_error (int ,int *) ;
 int * make_token (char,int ,int *) ;
 void* ra_svn_make_baton (int ,int *,int ,int *) ;
 int svn_ra_svn__write_cmd_add_dir (int ,int *,char const*,int ,int *,char const*,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_add_dir(const char *path, void *parent_baton,
                                   const char *copy_path,
                                   svn_revnum_t copy_rev,
                                   apr_pool_t *pool, void **child_baton)
{
  ra_svn_baton_t *b = parent_baton;
  svn_string_t *token = make_token('d', b->eb, pool);

  SVN_ERR_ASSERT((copy_path && SVN_IS_VALID_REVNUM(copy_rev))
                 || (!copy_path && !SVN_IS_VALID_REVNUM(copy_rev)));
  SVN_ERR(check_for_error(b->eb, pool));
  SVN_ERR(svn_ra_svn__write_cmd_add_dir(b->conn, pool, path, b->token,
                                        token, copy_path, copy_rev));
  *child_baton = ra_svn_make_baton(b->conn, pool, b->eb, token);
  return SVN_NO_ERROR;
}
