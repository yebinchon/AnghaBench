#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int start; scalar_t__ header_size; int /*<<< orphan*/  rep_id; TYPE_1__* sfile; int /*<<< orphan*/  sub_item; } ;
typedef  TYPE_2__ rep_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_4__ {int /*<<< orphan*/  rfile; int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t*
FUNC2(rep_state_t *rs,
                      apr_pool_t *scratch_pool)
{
  if (rs->start == -1)
    {
      FUNC0(FUNC1(&rs->start, &rs->sub_item,
                                    rs->sfile->fs, rs->sfile->rfile,
                                    &rs->rep_id, scratch_pool));
      rs->start += rs->header_size;
    }

  return SVN_NO_ERROR;
}