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
struct roff_meta {char* title; char* msec; char* vol; char* arch; char* os; char* date; TYPE_1__* first; } ;
struct TYPE_2__ {int /*<<< orphan*/  child; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_Sm ; 
 int /*<<< orphan*/  MD_sp ; 
 int /*<<< orphan*/  MD_spc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  outflags ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

void
FUNC3(void *arg, const struct roff_meta *mdoc)
{
	outflags = MD_Sm;
	FUNC1(mdoc->title);
	if (mdoc->msec != NULL) {
		outflags &= ~MD_spc;
		FUNC1("(");
		FUNC1(mdoc->msec);
		FUNC1(")");
	}
	FUNC1("-");
	FUNC1(mdoc->vol);
	if (mdoc->arch != NULL) {
		FUNC1("(");
		FUNC1(mdoc->arch);
		FUNC1(")");
	}
	outflags |= MD_sp;

	FUNC0(mdoc->first->child);

	outflags |= MD_sp;
	FUNC1(mdoc->os);
	FUNC1("-");
	FUNC1(mdoc->date);
	FUNC2('\n');
}