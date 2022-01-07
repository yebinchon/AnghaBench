
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* user; int per_repos_rights; int any_repos_rights; int all_repos_rights; } ;
typedef TYPE_1__ authz_global_rights_t ;
typedef int apr_pool_t ;


 int apr_hash_make (int *) ;
 int init_rights (int *) ;

__attribute__((used)) static void
init_global_rights(authz_global_rights_t *gr, const char *user,
                   apr_pool_t *result_pool)
{
  gr->user = user;
  init_rights(&gr->all_repos_rights);
  init_rights(&gr->any_repos_rights);
  gr->per_repos_rights = apr_hash_make(result_pool);
}
