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
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(const char *file)
{

	if ('.' == file[0] && '/' == file[1])
		file += 2;

	return ! (FUNC1(file, "../") || FUNC1(file, "/..") ||
	    (FUNC0(file, "man", 3) && FUNC0(file, "cat", 3)));
}