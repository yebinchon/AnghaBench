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
typedef  int /*<<< orphan*/  time_t ;
struct ub_packed_rrset_key {int dummy; } ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ub_packed_rrset_key*,size_t,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int
FUNC2(RES* ssl, struct ub_packed_rrset_key* k, time_t now, size_t i)
{
	char s[65535];
	if(!FUNC0(k, i, now, s, sizeof(s))) {
		return FUNC1(ssl, "BADRR\n");
	}
	return FUNC1(ssl, "%s", s);
}