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
typedef  int /*<<< orphan*/  uint64_t ;
struct reg {int dummy; } ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 (struct reg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct reg*) ; 

uint64_t
FUNC2(void *arg, dtrace_id_t id, void *parg, int argno,
    int aframes)
{
	struct reg r;

	FUNC1(curthread, &r);

	return (FUNC0(&r, 0, argno));
}