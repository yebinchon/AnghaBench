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
struct vm {int dummy; } ;
struct vatpic {int /*<<< orphan*/  mtx; struct vm* vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_VATPIC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct vatpic* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct vatpic *
FUNC2(struct vm *vm)
{
	struct vatpic *vatpic;

	vatpic = FUNC0(sizeof(struct vatpic), M_VATPIC, M_WAITOK | M_ZERO);
	vatpic->vm = vm;

	FUNC1(&vatpic->mtx, "vatpic lock", NULL, MTX_SPIN);

	return (vatpic);
}