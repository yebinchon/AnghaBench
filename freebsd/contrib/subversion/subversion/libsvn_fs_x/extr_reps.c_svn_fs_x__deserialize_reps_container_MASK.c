#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  instructions; int /*<<< orphan*/  first_instructions; int /*<<< orphan*/  bases; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ svn_fs_x__reps_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void**) ; 

svn_error_t *
FUNC1(void **out,
                                     void *data,
                                     apr_size_t data_len,
                                     apr_pool_t *result_pool)
{
  svn_fs_x__reps_t *reps = (svn_fs_x__reps_t *)data;

  /* de-serialize sub-structures */
  FUNC0(reps, (void **)&reps->text);
  FUNC0(reps, (void **)&reps->bases);
  FUNC0(reps, (void **)&reps->first_instructions);
  FUNC0(reps, (void **)&reps->instructions);

  /* done */
  *out = reps;

  return SVN_NO_ERROR;
}