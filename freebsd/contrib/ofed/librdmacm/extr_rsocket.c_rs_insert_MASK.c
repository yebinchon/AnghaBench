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
struct rsocket {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  idm ; 
 int FUNC0 (int /*<<< orphan*/ *,int,struct rsocket*) ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rsocket *rs, int index)
{
	FUNC1(&mut);
	rs->index = FUNC0(&idm, index, rs);
	FUNC2(&mut);
	return rs->index;
}