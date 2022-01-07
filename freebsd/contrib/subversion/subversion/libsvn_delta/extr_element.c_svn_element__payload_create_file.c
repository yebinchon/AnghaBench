
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_5__ {int text; int * props; int kind; int * pool; } ;
typedef TYPE_1__ svn_element__payload_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int assert (int ) ;
 int svn_element__payload_invariants (TYPE_1__*) ;
 int svn_node_file ;
 int * svn_prop_hash_dup (int *,int *) ;
 int svn_stringbuf_dup (int *,int *) ;

svn_element__payload_t *
svn_element__payload_create_file(apr_hash_t *props,
                                 svn_stringbuf_t *text,
                                 apr_pool_t *result_pool)
{
  svn_element__payload_t *new_payload
    = apr_pcalloc(result_pool, sizeof(*new_payload));

  SVN_ERR_ASSERT_NO_RETURN(text);

  new_payload->pool = result_pool;
  new_payload->kind = svn_node_file;
  new_payload->props = props ? svn_prop_hash_dup(props, result_pool) : ((void*)0);
  new_payload->text = svn_stringbuf_dup(text, result_pool);
  assert(svn_element__payload_invariants(new_payload));
  return new_payload;
}
