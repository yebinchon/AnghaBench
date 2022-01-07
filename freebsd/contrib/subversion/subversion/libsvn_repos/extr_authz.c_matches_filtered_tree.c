
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_3__ {int * repository; int * user; } ;
typedef TYPE_1__ authz_user_rules_t ;


 int FALSE ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static svn_boolean_t
matches_filtered_tree(const authz_user_rules_t *authz,
                      const char *repos_name,
                      const char *user)
{

  if (user)
    {
      if (authz->user == ((void*)0) || strcmp(user, authz->user))
        return FALSE;
    }
  else if (authz->user != ((void*)0))
    return FALSE;


  return strcmp(repos_name, authz->repository) == 0;
}
