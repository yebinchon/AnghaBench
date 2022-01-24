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
struct stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ guest ; 
 scalar_t__ FUNC0 (char*,struct stat*) ; 
 scalar_t__ noguestmod ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

char *
FUNC3(char *name)
{
	struct stat st;

	if (guest && noguestmod) {
		FUNC2(550, "Operation not permitted.");
		return (NULL);
	}
	if (FUNC0(name, &st) < 0) {
		FUNC1(550, name);
		return (NULL);
	}
	FUNC2(350, "File exists, ready for destination name.");
	return (name);
}