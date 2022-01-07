
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
typedef int authz_rights_t ;
struct TYPE_3__ {int any_repos_rights; int per_repos_rights; } ;
typedef TYPE_1__ authz_global_rights_t ;


 int AUTHZ_ANY_REPOSITORY ;
 int FALSE ;
 int TRUE ;
 int combine_rights (int *,int const* const,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_hash_gets (int ,char const*) ;

__attribute__((used)) static svn_boolean_t
resolve_global_rights(authz_rights_t *rights_p,
                      const authz_global_rights_t *global_rights,
                      const char *repos)
{
  if (0 == strcmp(repos, AUTHZ_ANY_REPOSITORY))
    {

      *rights_p = global_rights->any_repos_rights;
      return TRUE;
    }
  else
    {

      const authz_rights_t *const rights =
        svn_hash_gets(global_rights->per_repos_rights, repos);

      if (rights)
        {
          combine_rights(rights_p, rights, &global_rights->any_repos_rights);
          return TRUE;
        }
    }



  *rights_p = global_rights->any_repos_rights;
  return FALSE;
}
