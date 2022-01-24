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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,struct tm*) ; 

void
FUNC2(uint64_t t, char *buf, size_t len)
{
	time_t tt = t > INT_MAX ? INT_MAX : t; /* XXX revisit in 2038 :P */
	struct tm tm;

	FUNC0(&tt, &tm);
	FUNC1(buf, len, "%Y-%m-%dT%H:%M:%S", &tm);
}