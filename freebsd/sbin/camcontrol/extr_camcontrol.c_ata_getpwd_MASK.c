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
typedef  char u_int8_t ;

/* Variables and functions */
 char* optarg ; 
 char pwd_opt ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,...) ; 

__attribute__((used)) static int
FUNC4(u_int8_t *passwd, int max, char opt)
{
	int len;

	len = FUNC1(optarg);
	if (len > max) {
		FUNC3("-%c password is too long", opt);
		return (1);
	} else if (len == 0) {
		FUNC3("-%c password is missing", opt);
		return (1);
	} else if (optarg[0] == '-'){
		FUNC3("-%c password starts with '-' (generic arg?)", opt);
		return (1);
	} else if (FUNC1(passwd) != 0 && FUNC0(passwd, optarg) != 0) {
		FUNC3("-%c password conflicts with existing password from -%c",
		      opt, pwd_opt);
		return (1);
	}

	/* Callers pass in a buffer which does NOT need to be terminated */
	FUNC2(passwd, optarg, max);
	pwd_opt = opt;

	return (0);
}