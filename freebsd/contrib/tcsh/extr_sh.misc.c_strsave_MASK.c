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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (size_t) ; 

char   *
FUNC3(const char *s)
{
    char   *r;
    size_t size;

    if (s == NULL)
	s = "";
    size = FUNC1(s) + 1;
    r = FUNC2(size);
    FUNC0(r, s, size);
    return (r);
}