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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(const char* root_anchor_file, int* used_builtin)
{
	/* try to read it */
	switch(FUNC0(root_anchor_file))
	{
		case 0: /* no exist or empty */
			FUNC1(root_anchor_file);
			*used_builtin = 1;
			break;
		case 1: /* revoked tp */
			return 0;	
		case 2: /* it is fine */
		default:
			break;
	}
	return 1;
}