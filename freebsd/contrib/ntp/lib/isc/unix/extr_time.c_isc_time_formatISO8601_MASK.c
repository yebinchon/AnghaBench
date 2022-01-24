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
typedef  scalar_t__ time_t ;
struct TYPE_3__ {scalar_t__ seconds; } ;
typedef  TYPE_1__ isc_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 unsigned int FUNC3 (char*,unsigned int,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(const isc_time_t *t, char *buf, unsigned int len) {
	time_t now;
	unsigned int flen;

	FUNC1(len > 0);

	now = (time_t)t->seconds;
	flen = FUNC3(buf, len, "%Y-%m-%dT%H:%M:%SZ", FUNC2(&now));
	FUNC0(flen < len);
}