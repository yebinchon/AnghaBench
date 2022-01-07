
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {int eid; int branch_id; int rev; } ;
struct TYPE_7__ {TYPE_1__ branch_ref; int kind; int * pool; } ;
typedef TYPE_2__ svn_element__payload_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int assert (int ) ;
 int svn_element__payload_invariants (TYPE_2__*) ;
 int svn_node_unknown ;

svn_element__payload_t *
svn_element__payload_create_ref(svn_revnum_t rev,
                                const char *branch_id,
                                int eid,
                                apr_pool_t *result_pool)
{
  svn_element__payload_t *new_payload
    = apr_pcalloc(result_pool, sizeof(*new_payload));

  new_payload->pool = result_pool;
  new_payload->kind = svn_node_unknown;
  new_payload->branch_ref.rev = rev;
  new_payload->branch_ref.branch_id = apr_pstrdup(result_pool, branch_id);
  new_payload->branch_ref.eid = eid;
  assert(svn_element__payload_invariants(new_payload));
  return new_payload;
}
