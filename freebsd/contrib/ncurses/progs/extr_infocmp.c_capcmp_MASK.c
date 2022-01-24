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
typedef  scalar_t__ PredIdx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*) ; 
 scalar_t__ acs_chars_index ; 
 int /*<<< orphan*/  ignorepads ; 
 int FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC3(PredIdx idx, const char *s, const char *t)
/* capability comparison function */
{
    if (!FUNC0(s) && !FUNC0(t))
	return (s != t);
    else if (!FUNC0(s) || !FUNC0(t))
	return (1);

    if ((idx == acs_chars_index) || !ignorepads)
	return (FUNC2(s, t));
    else
	return (FUNC1(s, t));
}