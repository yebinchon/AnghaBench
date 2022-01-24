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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static void
FUNC4(const char *fromname, char *toname, size_t tonamesize)
{
	char *ptr;

	ptr = FUNC3(fromname, '/');
	FUNC0(ptr != NULL);
	FUNC0(ptr - fromname < (ssize_t)tonamesize);
	FUNC2(toname, fromname, ptr - fromname + 1);
	FUNC1(toname, "/dist/", tonamesize);
	FUNC1(toname, ptr + 1, tonamesize);
}