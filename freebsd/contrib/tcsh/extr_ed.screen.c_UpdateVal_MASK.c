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
typedef  char Char ;

/* Variables and functions */
 char* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 char* FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(const Char *tag, int value, Char *termcap, Char *backup)
{
    Char *ptr, *p;
    if ((ptr = FUNC6(termcap, tag)) == NULL) {
	(void)FUNC3(backup, termcap);
	return 0;
    } else {
	size_t len = (ptr - termcap) + FUNC4(tag);
	(void)FUNC5(backup, termcap, len);
	backup[len] = '\0';
	p = FUNC0(value, 0, 0);
	(void) FUNC1(backup + len, p);
	FUNC7(p);
	ptr = FUNC2(ptr, ':');
	if (ptr)
	    (void) FUNC1(backup, ptr);
	return 1;
    }
}