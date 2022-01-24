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
struct TYPE_3__ {int year; int month; int mday; int hour; int min; int sec; scalar_t__ offs_from_utc; int /*<<< orphan*/  status; scalar_t__ frac; } ;
typedef  TYPE_1__ TM_GPS ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int,int,int,int,int,long,char,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(
	char **buffpp,
	TM_GPS *tmp,
	int size,
	int print_status
	)
{
	char *s = *buffpp;

	FUNC2(*buffpp, size, "%04d-%02d-%02d %02d:%02d:%02d.%07ld (%c%02d%02d) ",
		 tmp->year, tmp->month, tmp->mday,
		 tmp->hour, tmp->min, tmp->sec, (long) tmp->frac,
		 (tmp->offs_from_utc < 0) ? '-' : '+',
		 FUNC0((int)tmp->offs_from_utc) / 3600,
		 (FUNC0((int)tmp->offs_from_utc) / 60) % 60);
	*buffpp += FUNC3(*buffpp);

	if (print_status)
		FUNC1(buffpp, tmp->status, size - (*buffpp - s));
}