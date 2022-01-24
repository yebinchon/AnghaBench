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
struct group_test_data {int dummy; } ;
struct group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct group_test_data*,struct group*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compare_group ; 
 int /*<<< orphan*/  group ; 

__attribute__((used)) static int
FUNC1(struct group_test_data *td, struct group *pwd)
{

	return (FUNC0(group, td, pwd, compare_group,
		NULL) != NULL ? 0 : -1);
}