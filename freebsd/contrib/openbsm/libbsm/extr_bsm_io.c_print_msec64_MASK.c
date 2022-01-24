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
typedef  int u_int64_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AU_OFLAG_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC1(FILE *fp, u_int64_t msec, int oflags)
{

	msec &= 0xffffffff;
	if (oflags & AU_OFLAG_RAW)
		FUNC0(fp, "%u", (u_int32_t)msec);
	else
		FUNC0(fp, " + %u msec", (u_int32_t)msec);
}