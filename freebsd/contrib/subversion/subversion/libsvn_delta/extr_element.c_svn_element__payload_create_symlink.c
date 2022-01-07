
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int target; int * props; int kind; int * pool; } ;
typedef TYPE_1__ svn_element__payload_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_ASSERT_NO_RETURN (char const*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int assert (int ) ;
 int svn_element__payload_invariants (TYPE_1__*) ;
 int svn_node_symlink ;
 int * svn_prop_hash_dup (int *,int *) ;

svn_element__payload_t *
svn_element__payload_create_symlink(apr_hash_t *props,
                                    const char *target,
                                    apr_pool_t *result_pool)
{
  svn_element__payload_t *new_payload
    = apr_pcalloc(result_pool, sizeof(*new_payload));

  SVN_ERR_ASSERT_NO_RETURN(target);

  new_payload->pool = result_pool;
  new_payload->kind = svn_node_symlink;
  new_payload->props = props ? svn_prop_hash_dup(props, result_pool) : ((void*)0);
  new_payload->target = apr_pstrdup(result_pool, target);
  assert(svn_element__payload_invariants(new_payload));
  return new_payload;
}
