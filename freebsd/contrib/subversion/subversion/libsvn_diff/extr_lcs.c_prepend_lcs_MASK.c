#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int refcount; struct TYPE_7__* next; scalar_t__ length; TYPE_1__** position; } ;
typedef  TYPE_2__ svn_diff__lcs_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
struct TYPE_6__ {scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static svn_diff__lcs_t *
FUNC3(svn_diff__lcs_t *lcs, apr_off_t lines,
            apr_off_t pos0_offset, apr_off_t pos1_offset,
            apr_pool_t *pool)
{
  svn_diff__lcs_t *new_lcs;

  FUNC0(lines > 0);

  new_lcs = FUNC1(pool, sizeof(*new_lcs));
  new_lcs->position[0] = FUNC2(pool, sizeof(*new_lcs->position[0]));
  new_lcs->position[0]->offset = pos0_offset;
  new_lcs->position[1] = FUNC2(pool, sizeof(*new_lcs->position[1]));
  new_lcs->position[1]->offset = pos1_offset;
  new_lcs->length = lines;
  new_lcs->refcount = 1;
  new_lcs->next = lcs;

  return new_lcs;
}