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
struct uufsd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 int FUNC1 (struct uufsd*) ; 
 int /*<<< orphan*/  FUNC2 (struct uufsd*) ; 
 int FUNC3 (struct uufsd*,char const*) ; 

int
FUNC4(struct uufsd *disk, const char *name)
{
	if (FUNC3(disk, name) == -1) {
		return (-1);
	}
	if (FUNC1(disk) == -1) {
		FUNC0(disk, "could not read superblock to fill out disk");
		FUNC2(disk);
		return (-1);
	}
	return (0);
}