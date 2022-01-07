
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_repos_authz_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_11__ {TYPE_2__* filtered; } ;
typedef TYPE_3__ svn_authz_t ;
struct TYPE_9__ {int const min_access; int const max_access; } ;
struct TYPE_12__ {int lookup_state; int root; TYPE_1__ global_rights; } ;
typedef TYPE_4__ authz_user_rules_t ;
typedef int authz_access_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int root; int lookup_state; } ;


 char const* AUTHZ_ANY_REPOSITORY ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int authz_access_read_flag ;
 int authz_access_write_flag ;
 int filter_tree (TYPE_3__*,int *) ;
 TYPE_4__* get_user_rules (TYPE_3__*,char const*,char const*) ;
 char* init_lockup_state (int ,int ,char const*) ;
 int lookup (int ,char const*,int const,int,int *) ;
 int svn_authz_read ;
 int svn_authz_recursive ;
 int svn_authz_write ;

svn_error_t *
svn_repos_authz_check_access(svn_authz_t *authz, const char *repos_name,
                             const char *path, const char *user,
                             svn_repos_authz_access_t required_access,
                             svn_boolean_t *access_granted,
                             apr_pool_t *pool)
{
  const authz_access_t required =
    ((required_access & svn_authz_read ? authz_access_read_flag : 0)
     | (required_access & svn_authz_write ? authz_access_write_flag : 0));


  authz_user_rules_t *rules = get_user_rules(
      authz,
      (repos_name ? repos_name : AUTHZ_ANY_REPOSITORY),
      user);






  if ((rules->global_rights.min_access & required) == required)
    {
      *access_granted = TRUE;
      return SVN_NO_ERROR;
    }

  if ((rules->global_rights.max_access & required) != required)
    {
      *access_granted = FALSE;
      return SVN_NO_ERROR;
    }


  if (!path)
    {
      *access_granted =
        ((rules->global_rights.max_access & required) == required);
      return SVN_NO_ERROR;
    }




  if (!rules->root)
    SVN_ERR(filter_tree(authz, pool));


  path = init_lockup_state(authz->filtered->lookup_state,
                           authz->filtered->root, path);


  SVN_ERR_ASSERT(path[0] == '/');



  *access_granted = lookup(rules->lookup_state, path, required,
                           !!(required_access & svn_authz_recursive), pool);

  return SVN_NO_ERROR;
}
