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
struct ub_stats_info {int dummy; } ;
typedef  int /*<<< orphan*/  nm ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,struct ub_stats_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC2(RES* ssl, int i, struct ub_stats_info* s)
{
	char nm[32];
	FUNC1(nm, sizeof(nm), "thread%d", i);
	nm[sizeof(nm)-1]=0;
	return FUNC0(ssl, nm, s);
}