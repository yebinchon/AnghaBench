
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; int target; int text; int props; scalar_t__ is_subbranch_root; } ;
typedef TYPE_1__ svn_element__payload_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef TYPE_2__ apr_array_header_t ;


 int FALSE ;
 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 int TRUE ;
 int assert (int ) ;
 int strcmp (int ,int ) ;
 int svn_element__payload_invariants (TYPE_1__ const*) ;
 int svn_error_clear (int ) ;



 scalar_t__ svn_node_unknown ;
 int svn_prop_diffs (TYPE_2__**,int ,int ,int *) ;
 int svn_stringbuf_compare (int ,int ) ;

svn_boolean_t
svn_element__payload_equal(const svn_element__payload_t *left,
                           const svn_element__payload_t *right,
                           apr_pool_t *scratch_pool)
{
  apr_array_header_t *prop_diffs;

  assert(svn_element__payload_invariants(left));
  assert(svn_element__payload_invariants(right));


  if (left->is_subbranch_root && right->is_subbranch_root)
    {
      return TRUE;
    }
  else if (left->is_subbranch_root || right->is_subbranch_root)
    {
      return FALSE;
    }


  SVN_ERR_ASSERT_NO_RETURN(left->kind != svn_node_unknown
                           && right->kind != svn_node_unknown);

  if (left->kind != right->kind)
    {
      return FALSE;
    }

  svn_error_clear(svn_prop_diffs(&prop_diffs,
                                 left->props, right->props,
                                 scratch_pool));

  if (prop_diffs->nelts != 0)
    {
      return FALSE;
    }
  switch (left->kind)
    {
    case 130:
      break;
    case 129:
      if (! svn_stringbuf_compare(left->text, right->text))
        {
          return FALSE;
        }
      break;
    case 128:
      if (strcmp(left->target, right->target) != 0)
        {
          return FALSE;
        }
      break;
    default:
      break;
    }

  return TRUE;
}
