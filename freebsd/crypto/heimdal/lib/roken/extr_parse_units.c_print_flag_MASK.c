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

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,char const*,char*) ; 

__attribute__((used)) static int
FUNC1 (char *s, size_t len, int divisor, const char *name, int rem)
{
    return FUNC0 (s, len, "%s%s", name, rem > 0 ? ", " : "");
}