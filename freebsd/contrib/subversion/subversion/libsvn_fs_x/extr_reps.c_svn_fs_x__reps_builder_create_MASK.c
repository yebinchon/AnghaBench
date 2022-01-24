#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* instructions; void* reps; void* bases; int /*<<< orphan*/  hash; int /*<<< orphan*/  text; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ svn_fs_x__reps_builder_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  rep_t ;
typedef  int /*<<< orphan*/  instruction_t ;
typedef  int /*<<< orphan*/  base_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

svn_fs_x__reps_builder_t *
FUNC4(svn_fs_t *fs,
                              apr_pool_t *result_pool)
{
  svn_fs_x__reps_builder_t *result = FUNC1(result_pool,
                                                 sizeof(*result));

  result->fs = fs;
  result->text = FUNC3(result_pool);
  FUNC2(&result->hash, 4, result_pool);

  result->bases = FUNC0(result_pool, 0, sizeof(base_t));
  result->reps = FUNC0(result_pool, 0, sizeof(rep_t));
  result->instructions = FUNC0(result_pool, 0,
                                        sizeof(instruction_t));

  return result;
}