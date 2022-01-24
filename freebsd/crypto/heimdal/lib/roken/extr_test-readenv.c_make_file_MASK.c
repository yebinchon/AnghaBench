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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC4(char *tmpl, size_t l)
{
    int fd;
    FUNC3(tmpl, "env.XXXXXX", l);
    fd = FUNC2(tmpl);
    if(fd < 0)
	FUNC1(1, "mkstemp");
    FUNC0(fd);
}