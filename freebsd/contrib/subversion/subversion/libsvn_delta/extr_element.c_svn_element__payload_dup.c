
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* branch_id; } ;
struct TYPE_9__ {scalar_t__ kind; void* target; scalar_t__ text; scalar_t__ props; TYPE_1__ branch_ref; } ;
typedef TYPE_2__ svn_element__payload_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_pmemdup (int *,TYPE_2__ const*,int) ;
 void* apr_pstrdup (int *,void*) ;
 int assert (int) ;
 scalar_t__ svn_element__payload_invariants (TYPE_2__ const*) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_symlink ;
 scalar_t__ svn_prop_hash_dup (scalar_t__,int *) ;
 scalar_t__ svn_stringbuf_dup (scalar_t__,int *) ;

svn_element__payload_t *
svn_element__payload_dup(const svn_element__payload_t *old,
                         apr_pool_t *result_pool)
{
  svn_element__payload_t *new_payload;

  assert(! old || svn_element__payload_invariants(old));

  if (old == ((void*)0))
    return ((void*)0);

  new_payload = apr_pmemdup(result_pool, old, sizeof(*new_payload));
  if (old->branch_ref.branch_id)
    new_payload->branch_ref.branch_id
      = apr_pstrdup(result_pool, old->branch_ref.branch_id);
  if (old->props)
    new_payload->props = svn_prop_hash_dup(old->props, result_pool);
  if (old->kind == svn_node_file && old->text)
    new_payload->text = svn_stringbuf_dup(old->text, result_pool);
  if (old->kind == svn_node_symlink && old->target)
    new_payload->target = apr_pstrdup(result_pool, old->target);
  return new_payload;
}
