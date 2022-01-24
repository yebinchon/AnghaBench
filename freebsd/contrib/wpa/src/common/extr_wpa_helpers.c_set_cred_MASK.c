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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int,char const*,char const*) ; 
 int FUNC1 (char const*,char*) ; 

int FUNC2(const char *ifname, int id, const char *field, const char *value)
{
	char buf[200];
	FUNC0(buf, sizeof(buf), "SET_CRED %d %s %s", id, field, value);
	return FUNC1(ifname, buf);
}