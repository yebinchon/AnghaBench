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
typedef  int u_long ;
struct ifbrparam {int ifbrp_fwddelay; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGSFD ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifbrparam*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int*) ; 

__attribute__((used)) static void
FUNC4(const char *arg, int d, int s, const struct afswtch *afp)
{
	struct ifbrparam param;
	u_long val;

	if (FUNC3(arg, &val) < 0 || (val & ~0xff) != 0)
		FUNC2(1, "invalid value: %s",  arg);

	param.ifbrp_fwddelay = val & 0xff;

	if (FUNC0(s, BRDGSFD, &param, sizeof(param), 1) < 0)
		FUNC1(1, "BRDGSFD %s",  arg);
}