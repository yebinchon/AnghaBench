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
typedef  scalar_t__ u_long ;
typedef  scalar_t__ u_int ;

/* Variables and functions */
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC2(const char *arg, u_int lo, u_int hi, const char *msg)
{
    char *s;
    u_long x;

    errno = 0;
    x = FUNC1(arg, &s, 0);
    if (errno || !*arg || *s || x < lo || x > hi)
	FUNC0(1, "%s: bad %s", arg, msg);
    return x;
}