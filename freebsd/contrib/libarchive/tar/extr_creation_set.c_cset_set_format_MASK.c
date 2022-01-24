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
struct creation_set {char* create_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char const*) ; 

void
FUNC3(struct creation_set *cset, const char *format)
{
	char *f;

	f = FUNC2(format);
	if (f == NULL)
		FUNC1(1, 0, "No memory");
	FUNC0(cset->create_format);
	cset->create_format = f;
}