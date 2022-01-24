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
struct manpaths {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct manpaths*,char*,char) ; 
 char* FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct manpaths *dirs, char *path, char option)
{
	char	*dir;

	if (NULL == path)
		return;

	for (dir = FUNC1(path, ":"); dir; dir = FUNC1(NULL, ":"))
		FUNC0(dirs, dir, option);
}