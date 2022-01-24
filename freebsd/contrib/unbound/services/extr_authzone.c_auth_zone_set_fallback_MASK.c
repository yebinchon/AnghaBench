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
struct auth_zone {int fallback_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

int
FUNC2(struct auth_zone* z, char* fallbackstr)
{
	if(FUNC1(fallbackstr, "yes") != 0 && FUNC1(fallbackstr, "no") != 0){
		FUNC0("auth zone fallback, expected yes or no, got %s",
			fallbackstr);
		return 0;
	}
	z->fallback_enabled = (FUNC1(fallbackstr, "yes")==0);
	return 1;
}