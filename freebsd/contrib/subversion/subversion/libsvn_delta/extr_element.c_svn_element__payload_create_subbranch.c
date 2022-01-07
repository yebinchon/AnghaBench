
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_subbranch_root; int * pool; } ;
typedef TYPE_1__ svn_element__payload_t ;
typedef int apr_pool_t ;


 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int assert (int ) ;
 int svn_element__payload_invariants (TYPE_1__*) ;

svn_element__payload_t *
svn_element__payload_create_subbranch(apr_pool_t *result_pool)
{
  svn_element__payload_t *new_payload
    = apr_pcalloc(result_pool, sizeof(*new_payload));

  new_payload->pool = result_pool;
  new_payload->is_subbranch_root = TRUE;
  assert(svn_element__payload_invariants(new_payload));
  return new_payload;
}
