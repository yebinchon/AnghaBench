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
 size_t MAX_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 scalar_t__ FUNC1 (char*,char) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC4(char *dst, char *src)
{
    if (FUNC1(src, '|') == 0) {
	size_t len = FUNC2(src);
	if (len > MAX_NAME_SIZE)
	    len = MAX_NAME_SIZE;
	(void) FUNC3(dst, src, len);
	FUNC0(dst + len, "|", MAX_NAME_SIZE);
	src = dst;
    }
    return src;
}