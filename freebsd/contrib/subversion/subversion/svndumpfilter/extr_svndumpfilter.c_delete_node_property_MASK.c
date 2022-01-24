#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_baton_t {int /*<<< orphan*/  rev_orig; } ;
struct node_baton_t {int /*<<< orphan*/  props; int /*<<< orphan*/  has_props; int /*<<< orphan*/  node_path; int /*<<< orphan*/  has_prop_delta; scalar_t__ do_skip; struct revision_baton_t* rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_STREAM_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *node_baton, const char *name)
{
  struct node_baton_t *nb = node_baton;
  struct revision_baton_t *rb = nb->rb;

  if (nb->do_skip)
    return SVN_NO_ERROR;

  if (!nb->has_prop_delta)
    return FUNC1(SVN_ERR_STREAM_MALFORMED_DATA, NULL,
                             FUNC0("Delta property block detected, but deltas "
                               "are not enabled for node '%s' in original "
                               "revision %ld"),
                             nb->node_path, rb->rev_orig);

  nb->has_props = TRUE;
  FUNC2(&(nb->props), name);

  return SVN_NO_ERROR;
}