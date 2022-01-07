
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int authz_global_rights_t ;
struct TYPE_4__ {int repos; } ;
struct TYPE_5__ {TYPE_1__ rule; } ;
typedef TYPE_2__ authz_acl_t ;
typedef int authz_access_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ svn_authz__get_acl_access (int *,TYPE_2__ const* const,char const* const,int ) ;
 int update_global_rights (int * const,int ,int ) ;

__attribute__((used)) static svn_error_t *
update_user_rights(void *baton,
                   const void *key,
                   apr_ssize_t klen,
                   void *value,
                   apr_pool_t *scratch_pool)
{
  const authz_acl_t *const acl = baton;
  const char *const user = key;
  authz_global_rights_t *const gr = value;
  authz_access_t access;
  svn_boolean_t has_access =
    svn_authz__get_acl_access(&access, acl, user, acl->rule.repos);

  if (has_access)
    update_global_rights(gr, acl->rule.repos, access);
  return SVN_NO_ERROR;
}
