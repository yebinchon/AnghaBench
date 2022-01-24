#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 scalar_t__ buffer_size ; 
 int /*<<< orphan*/  command_prot ; 
 int /*<<< orphan*/  data_prot ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* mech ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ sec_complete ; 

void
FUNC2(void)
{
    if(sec_complete){
	FUNC1("Using %s for authentication.\n", mech->name);
	FUNC1("Using %s command channel.\n", FUNC0(command_prot));
	FUNC1("Using %s data channel.\n", FUNC0(data_prot));
	if(buffer_size > 0)
	    FUNC1("Protection buffer size: %lu.\n",
		   (unsigned long)buffer_size);
    }else{
	FUNC1("Not using any security mechanism.\n");
    }
}