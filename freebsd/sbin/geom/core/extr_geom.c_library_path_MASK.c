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
 char* GEOM_CLASS_DIR ; 
 char* FUNC0 (char*) ; 

__attribute__((used)) static const char *
FUNC1(void)
{
	const char *path;

	path = FUNC0("GEOM_LIBRARY_PATH");
	if (path == NULL)
		path = GEOM_CLASS_DIR;
	return (path);
}