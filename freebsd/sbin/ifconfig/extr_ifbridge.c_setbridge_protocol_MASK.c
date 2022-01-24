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
struct ifbrparam {int ifbrp_proto; } ;
struct afswtch {int dummy; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGSPROTO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifbrparam*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static void
FUNC4(const char *arg, int d, int s, const struct afswtch *afp)
{
	struct ifbrparam param;

	if (FUNC3(arg, "stp") == 0) {
		param.ifbrp_proto = 0;
	} else if (FUNC3(arg, "rstp") == 0) {
		param.ifbrp_proto = 2;
	} else {
		FUNC2(1, "unknown stp protocol");
	}

	if (FUNC0(s, BRDGSPROTO, &param, sizeof(param), 1) < 0)
		FUNC1(1, "BRDGSPROTO %s",  arg);
}