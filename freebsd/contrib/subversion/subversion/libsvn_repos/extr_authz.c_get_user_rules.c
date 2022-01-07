
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* filtered; int full; int pool; } ;
typedef TYPE_1__ svn_authz_t ;
struct TYPE_8__ {int global_rights; int * root; int lookup_state; int * user; int * repository; int * pool; } ;
typedef TYPE_2__ authz_user_rules_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_palloc (int *,int) ;
 int * apr_pstrdup (int *,char const*) ;
 int create_lookup_state (int *) ;
 scalar_t__ matches_filtered_tree (TYPE_2__*,char const*,char const*) ;
 int svn_authz__get_global_rights (int *,int ,char const*,char const*) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static authz_user_rules_t *
get_user_rules(svn_authz_t *authz,
               const char *repos_name,
               const char *user)
{
  apr_pool_t *pool;


  if (authz->filtered)
    {

      if (matches_filtered_tree(authz->filtered, repos_name, user))
        return authz->filtered;


      svn_pool_destroy(authz->filtered->pool);
      authz->filtered = ((void*)0);
    }


  pool = svn_pool_create(authz->pool);


  authz->filtered = apr_palloc(pool, sizeof(*authz->filtered));
  authz->filtered->pool = pool;
  authz->filtered->repository = apr_pstrdup(pool, repos_name);
  authz->filtered->user = user ? apr_pstrdup(pool, user) : ((void*)0);
  authz->filtered->lookup_state = create_lookup_state(pool);
  authz->filtered->root = ((void*)0);

  svn_authz__get_global_rights(&authz->filtered->global_rights,
                               authz->full, user, repos_name);

  return authz->filtered;
}
