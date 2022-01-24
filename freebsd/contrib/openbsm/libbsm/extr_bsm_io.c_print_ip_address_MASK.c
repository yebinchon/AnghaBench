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
typedef  int /*<<< orphan*/  u_int32_t ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC1 (struct in_addr) ; 

__attribute__((used)) static void
FUNC2(FILE *fp, u_int32_t ip)
{
	struct in_addr ipaddr;

	ipaddr.s_addr = ip;
	FUNC0(fp, "%s", FUNC1(ipaddr));
}