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
typedef  int /*<<< orphan*/  vint64 ;
typedef  int /*<<< orphan*/  u_int32 ;
struct tm {int dummy; } ;

/* Variables and functions */
 struct tm* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct tm *
FUNC2(
	u_int32 ntp, int local
	)
{
	vint64 vl;
	vl = FUNC1(ntp, NULL);
	return FUNC0(&vl, local);
}