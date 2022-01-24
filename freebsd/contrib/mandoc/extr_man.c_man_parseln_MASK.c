#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct roff_man {int /*<<< orphan*/  roff; int /*<<< orphan*/  flags; TYPE_1__* last; } ;
struct TYPE_2__ {scalar_t__ type; int line; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAN_NEWLINE ; 
 scalar_t__ ROFFT_EQN ; 
 int FUNC0 (struct roff_man*,int,char*,int) ; 
 int FUNC1 (struct roff_man*,int,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 

int
FUNC3(struct roff_man *man, int ln, char *buf, int offs)
{

	if (man->last->type != ROFFT_EQN || ln > man->last->line)
		man->flags |= MAN_NEWLINE;

	return FUNC2(man->roff, buf, &offs) ?
	    FUNC0(man, ln, buf, offs) :
	    FUNC1(man, ln, buf, offs);
}