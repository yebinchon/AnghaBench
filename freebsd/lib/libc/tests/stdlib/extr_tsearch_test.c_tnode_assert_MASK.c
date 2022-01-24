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
struct TYPE_3__ {int /*<<< orphan*/  balance; struct TYPE_3__* rlink; struct TYPE_3__* llink; } ;
typedef  TYPE_1__ posix_tnode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int
FUNC2(const posix_tnode *n)
{
	unsigned int height_left, height_right;
	int balance;

	if (n == NULL)
		return 0;
	height_left = FUNC2(n->llink);
	height_right = FUNC2(n->rlink);
	balance = (int)height_left - (int)height_right;
	FUNC0(balance >= -1);
	FUNC0(balance <= 1);
	FUNC1(balance, n->balance);
	return (height_left > height_right ? height_left : height_right) + 1;
}