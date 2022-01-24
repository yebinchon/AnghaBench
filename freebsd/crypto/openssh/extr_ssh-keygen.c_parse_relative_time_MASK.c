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
typedef  int time_t ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static u_int64_t
FUNC2(const char *s, time_t now)
{
	int64_t mul, secs;

	mul = *s == '-' ? -1 : 1;

	if ((secs = FUNC0(s + 1)) == -1)
		FUNC1("Invalid relative certificate time %s", s);
	if (mul == -1 && secs > now)
		FUNC1("Certificate time %s cannot be represented", s);
	return now + (u_int64_t)(secs * mul);
}