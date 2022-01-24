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
typedef  int vm_offset_t ;
struct env_var {char* ev_name; char* ev_value; struct env_var* ev_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  copyin ; 
 struct env_var* environ ; 
 int FUNC1 (char*) ; 

vm_offset_t
FUNC2(vm_offset_t addr)
{
    struct env_var	*ep;
    
    /* traverse the environment */
    for (ep = environ; ep != NULL; ep = ep->ev_next) {
        FUNC0(copyin, ep->ev_name, addr, FUNC1(ep->ev_name));
	addr += FUNC1(ep->ev_name);
	FUNC0(copyin, "=", addr, 1);
	addr++;
	if (ep->ev_value != NULL) {
            FUNC0(copyin, ep->ev_value, addr, FUNC1(ep->ev_value));
	    addr += FUNC1(ep->ev_value);
	}
	FUNC0(copyin, "", addr, 1);
	addr++;
    }
    FUNC0(copyin, "", addr, 1);
    addr++;
    return(addr);
}