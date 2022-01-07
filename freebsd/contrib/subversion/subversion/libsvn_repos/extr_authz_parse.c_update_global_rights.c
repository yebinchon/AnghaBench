
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int authz_rights_t ;
struct TYPE_3__ {int per_repos_rights; int any_repos_rights; int all_repos_rights; } ;
typedef TYPE_1__ authz_global_rights_t ;
typedef int authz_access_t ;


 int AUTHZ_ANY_REPOSITORY ;
 int apr_hash_pool_get (int ) ;
 int * apr_palloc (int ,int) ;
 int init_rights (int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,char const*,int *) ;
 int update_rights (int *,int ) ;

__attribute__((used)) static void
update_global_rights(authz_global_rights_t *gr,
                     const char *repos,
                     authz_access_t access)
{
  update_rights(&gr->all_repos_rights, access);
  if (0 == strcmp(repos, AUTHZ_ANY_REPOSITORY))
    update_rights(&gr->any_repos_rights, access);
  else
    {
      authz_rights_t *rights = svn_hash_gets(gr->per_repos_rights, repos);
      if (rights)
        update_rights(rights, access);
      else
        {
          rights = apr_palloc(apr_hash_pool_get(gr->per_repos_rights),
                              sizeof(*rights));
          init_rights(rights);
          update_rights(rights, access);
          svn_hash_sets(gr->per_repos_rights, repos, rights);
        }
    }
}
