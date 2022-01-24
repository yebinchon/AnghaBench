#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct node_baton_t {TYPE_2__* rb; int /*<<< orphan*/  node_pool; int /*<<< orphan*/  tcl; int /*<<< orphan*/  has_text; int /*<<< orphan*/ * props; scalar_t__ has_props; int /*<<< orphan*/  headers; scalar_t__ writing_begun; scalar_t__ do_skip; } ;
typedef  int apr_size_t ;
struct TYPE_4__ {TYPE_1__* pb; } ;
struct TYPE_3__ {int /*<<< orphan*/  out_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *node_baton)
{
  struct node_baton_t *nb = node_baton;
  apr_size_t len = 2;

  /* Get out of here if we can. */
  if (nb->do_skip)
    return SVN_NO_ERROR;

  /* If the node was not flushed already to output its text, do it now. */
  if (! nb->writing_begun)
    {
      nb->writing_begun = TRUE;
      if (nb->has_props)
        {
          FUNC3(nb->props, "PROPS-END\n");
        }
      FUNC0(FUNC1(nb->rb->pb->out_stream,
                                          nb->headers,
                                          nb->has_props ? nb->props : NULL,
                                          nb->has_text,
                                          nb->tcl,
                                          TRUE /*content_length_always*/,
                                          nb->node_pool));
    }

  /* put an end to node. */
  FUNC0(FUNC2(nb->rb->pb->out_stream, "\n\n", &len));

  return SVN_NO_ERROR;
}