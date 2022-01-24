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
struct TYPE_2__ {int /*<<< orphan*/  sodest; int /*<<< orphan*/  date; int /*<<< orphan*/  name; int /*<<< orphan*/  title; int /*<<< orphan*/  arch; int /*<<< orphan*/  os; int /*<<< orphan*/  vol; int /*<<< orphan*/  msec; int /*<<< orphan*/ * first; } ;
struct roff_man {TYPE_1__ meta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct roff_man*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct roff_man *man)
{
	if (man->meta.first != NULL)
		FUNC1(man, man->meta.first);
	FUNC0(man->meta.msec);
	FUNC0(man->meta.vol);
	FUNC0(man->meta.os);
	FUNC0(man->meta.arch);
	FUNC0(man->meta.title);
	FUNC0(man->meta.name);
	FUNC0(man->meta.date);
	FUNC0(man->meta.sodest);
}