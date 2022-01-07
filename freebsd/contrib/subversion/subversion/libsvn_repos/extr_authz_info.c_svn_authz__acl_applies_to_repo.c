
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_4__ {char const* repos; } ;
struct TYPE_5__ {TYPE_1__ rule; } ;
typedef TYPE_2__ authz_acl_t ;


 char const* AUTHZ_ANY_REPOSITORY ;
 scalar_t__ strcmp (char const*,char const*) ;

svn_boolean_t
svn_authz__acl_applies_to_repo(const authz_acl_t *acl,
                               const char *repos)
{


  return (0 == strcmp(acl->rule.repos, AUTHZ_ANY_REPOSITORY))
      || (0 == strcmp(repos, acl->rule.repos));
}
