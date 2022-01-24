#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ kind; int /*<<< orphan*/  target; int /*<<< orphan*/  text; int /*<<< orphan*/  props; scalar_t__ is_subbranch_root; } ;
typedef  TYPE_1__ svn_element__payload_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef  TYPE_2__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  svn_node_dir 130 
#define  svn_node_file 129 
#define  svn_node_symlink 128 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

svn_boolean_t
FUNC7(const svn_element__payload_t *left,
                           const svn_element__payload_t *right,
                           apr_pool_t *scratch_pool)
{
  apr_array_header_t *prop_diffs;

  FUNC1(FUNC3(left));
  FUNC1(FUNC3(right));

  /* any two subbranch-root elements compare equal */
  if (left->is_subbranch_root && right->is_subbranch_root)
    {
      return TRUE;
    }
  else if (left->is_subbranch_root || right->is_subbranch_root)
    {
      return FALSE;
    }

  /* content defined only by reference is not supported */
  FUNC0(left->kind != svn_node_unknown
                           && right->kind != svn_node_unknown);

  if (left->kind != right->kind)
    {
      return FALSE;
    }

  FUNC4(FUNC5(&prop_diffs,
                                 left->props, right->props,
                                 scratch_pool));

  if (prop_diffs->nelts != 0)
    {
      return FALSE;
    }
  switch (left->kind)
    {
    case svn_node_dir:
      break;
    case svn_node_file:
      if (! FUNC6(left->text, right->text))
        {
          return FALSE;
        }
      break;
    case svn_node_symlink:
      if (FUNC2(left->target, right->target) != 0)
        {
          return FALSE;
        }
      break;
    default:
      break;
    }

  return TRUE;
}