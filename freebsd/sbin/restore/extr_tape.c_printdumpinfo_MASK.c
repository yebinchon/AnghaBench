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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_2__ {scalar_t__ c_date; scalar_t__ c_ddate; char* c_host; char* c_label; int /*<<< orphan*/  c_dev; int /*<<< orphan*/  c_filesys; scalar_t__ c_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_1__ spcl ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC3(void)
{
	time_t t;
	t = FUNC0(spcl.c_date);
	FUNC2(stdout, "Dump   date: %s", FUNC1(&t));
	t = FUNC0(spcl.c_ddate);
	FUNC2(stdout, "Dumped from: %s",
	    (spcl.c_ddate == 0) ? "the epoch\n" : FUNC1(&t));
	if (spcl.c_host[0] == '\0')
		return;
	FUNC2(stderr, "Level %s dump of %d on %s:%d\n",
	    (intmax_t)spcl.c_level, spcl.c_filesys, spcl.c_host, spcl.c_dev);
	FUNC2(stderr, "Label: %s\n", spcl.c_label);
}