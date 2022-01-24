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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 char* class_name ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC2(void)
{
	char name[64];
	int id;

	FUNC1(name, sizeof(name), "geom_%s", class_name);
	id = FUNC0(name);
	if (id >= 0)
		return (1);
	return (0);
}