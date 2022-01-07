
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_2__ {int server; } ;
typedef TYPE_1__ authz_baton_t ;
typedef int apr_pool_t ;


 int * authz_check_access (int *,char const*,int ,int ,int *) ;
 int svn_authz_read ;

__attribute__((used)) static svn_error_t *authz_check_access_cb(svn_boolean_t *allowed,
                                          svn_fs_root_t *root,
                                          const char *path,
                                          void *baton,
                                          apr_pool_t *pool)
{
  authz_baton_t *sb = baton;

  return authz_check_access(allowed, path, svn_authz_read,
                            sb->server, pool);
}
