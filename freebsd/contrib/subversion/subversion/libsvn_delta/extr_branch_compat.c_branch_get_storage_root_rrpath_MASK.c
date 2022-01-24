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
struct TYPE_4__ {scalar_t__ bid; } ;
typedef  TYPE_1__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 char* FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 char const* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC4(const svn_branch__state_t *branch,
                               apr_pool_t *result_pool)
{
  int top_branch_num = FUNC1(branch->bid + 1);
  const char *top_path = FUNC0(result_pool, "top%d", top_branch_num);
  const char *nested_path = FUNC2(branch, result_pool);

  return FUNC3(top_path, nested_path, result_pool);
}