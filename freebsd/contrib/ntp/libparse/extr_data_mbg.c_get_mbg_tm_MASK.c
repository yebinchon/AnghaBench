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
struct TYPE_3__ {int /*<<< orphan*/  status; void* offs_from_utc; void* frac; int /*<<< orphan*/  sec; int /*<<< orphan*/  min; int /*<<< orphan*/  hour; int /*<<< orphan*/  wday; void* yday; int /*<<< orphan*/  mday; int /*<<< orphan*/  month; void* year; } ;
typedef  TYPE_1__ TM_GPS ;

/* Variables and functions */
 void* FUNC0 (unsigned char**) ; 
 void* FUNC1 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**) ; 

void
FUNC3(
	unsigned char **buffpp,
	TM_GPS *tmp
	)
{
  tmp->year = FUNC0(buffpp);
  tmp->month = *(*buffpp)++;
  tmp->mday = *(*buffpp)++;
  tmp->yday = FUNC0(buffpp);
  tmp->wday = *(*buffpp)++;
  tmp->hour = *(*buffpp)++;
  tmp->min = *(*buffpp)++;
  tmp->sec = *(*buffpp)++;
  tmp->frac = FUNC1(buffpp);
  tmp->offs_from_utc = FUNC1(buffpp);
  tmp->status = FUNC2(buffpp);
}