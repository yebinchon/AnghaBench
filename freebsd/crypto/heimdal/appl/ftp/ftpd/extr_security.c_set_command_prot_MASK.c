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
typedef  enum protection_level { ____Placeholder_protection_level } protection_level ;

/* Variables and functions */
 int COMPLETE ; 
 int FUNC0 (char*) ; 
 int command_prot ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int prot_clear ; 
 int prot_invalid ; 

enum protection_level
FUNC2(enum protection_level level)
{
    int ret;
    enum protection_level old = command_prot;
    if(level != command_prot && level == prot_clear) {
	ret = FUNC0("CCC");
	if(ret != COMPLETE) {
	    FUNC1("Failed to clear command channel.\n");
	    return prot_invalid;
	}
    }
    command_prot = level;
    return old;
}