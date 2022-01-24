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
typedef  int u_int32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;

/* Variables and functions */
 int f_tflag ; 
 int FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int thiszone ; 

__attribute__((used)) static void
FUNC3()
{
	struct timeval tp;
	int s;

	if (FUNC0(&tp, NULL) == -1) {
		FUNC1("gettimeofday");
		return;
	}

	if (f_tflag == 1) {
		/* Default */
		s = (tp.tv_sec + thiszone ) % 86400;
		(void)FUNC2("%02d:%02d:%02d.%06u ",
		    s / 3600, (s % 3600) / 60, s % 60, (u_int32_t)tp.tv_usec);
	} else if (f_tflag > 1) {
		/* Unix timeval style */
		(void)FUNC2("%u.%06u ",
		    (u_int32_t)tp.tv_sec, (u_int32_t)tp.tv_usec);
	}

	FUNC2("\n");
}