
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_membuf_t ;
typedef int svn_error_t ;
struct TYPE_5__ {TYPE_1__* filtered; int * full; int * authz_id; } ;
typedef TYPE_2__ svn_authz_t ;
typedef int node_t ;
typedef int authz_full_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {char* repository; char* user; int * root; int * pool; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ authz_pool ;
 int * construct_filtered_key (char const*,char const*,int *,int *) ;
 int * create_user_authz (int *,char const*,char const*,int *,int *) ;
 scalar_t__ filtered_pool ;
 int svn_error_clear (int ) ;
 int svn_object_pool__insert (void**,scalar_t__,int *,int *,int *,int *) ;
 int svn_object_pool__lookup (void**,scalar_t__,int *,int *) ;
 int * svn_object_pool__new_item_pool (scalar_t__) ;

__attribute__((used)) static svn_error_t *
filter_tree(svn_authz_t *authz,
            apr_pool_t *scratch_pool)
{
  apr_pool_t *pool = authz->filtered->pool;
  const char *repos_name = authz->filtered->repository;
  const char *user = authz->filtered->user;
  node_t *root;

  if (filtered_pool)
    {
      svn_membuf_t *key = construct_filtered_key(repos_name, user,
                                                 authz->authz_id,
                                                 scratch_pool);


      SVN_ERR(svn_object_pool__lookup((void **)&root, filtered_pool, key,
                                      pool));

      if (!root)
        {
          apr_pool_t *item_pool = svn_object_pool__new_item_pool(authz_pool);
          authz_full_t *add_ref = ((void*)0);
          svn_error_clear(svn_object_pool__lookup((void **)&add_ref,
                                                  authz_pool, authz->authz_id,
                                                  item_pool));
          SVN_ERR_ASSERT(add_ref == authz->full);


          root = create_user_authz(authz->full, repos_name, user, item_pool,
                                   scratch_pool);
          svn_error_clear(svn_object_pool__insert((void **)&root,
                                                  filtered_pool, key, root,
                                                  item_pool, pool));
        }
     }
  else
    {
      root = create_user_authz(authz->full, repos_name, user, pool,
                               scratch_pool);
    }


  authz->filtered->root = root;

  return SVN_NO_ERROR;
}
