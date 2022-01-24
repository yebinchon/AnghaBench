#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {int /*<<< orphan*/  skip; TYPE_3__* pb; } ;
typedef  TYPE_1__ node_move_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {scalar_t__ skip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(node_move_baton_t *nmb,
                 apr_pool_t *scratch_pool)
{
  FUNC1(nmb && nmb->pb);

  FUNC0(FUNC2(nmb->pb, scratch_pool));

  if (nmb->pb->skip)
    nmb->skip = TRUE;

  return SVN_NO_ERROR;
}