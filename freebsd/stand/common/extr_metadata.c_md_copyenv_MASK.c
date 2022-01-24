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
typedef  int vm_offset_t ;
struct env_var {char* ev_name; char* ev_value; struct env_var* ev_next; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* arch_copyin ) (char*,int,int) ;} ;

/* Variables and functions */
 TYPE_1__ archsw ; 
 struct env_var* environ ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static vm_offset_t
FUNC6(vm_offset_t addr)
{
    struct env_var	*ep;

    /* traverse the environment */
    for (ep = environ; ep != NULL; ep = ep->ev_next) {
	archsw.arch_copyin(ep->ev_name, addr, FUNC0(ep->ev_name));
	addr += FUNC0(ep->ev_name);
	archsw.arch_copyin("=", addr, 1);
	addr++;
	if (ep->ev_value != NULL) {
	    archsw.arch_copyin(ep->ev_value, addr, FUNC0(ep->ev_value));
	    addr += FUNC0(ep->ev_value);
	}
	archsw.arch_copyin("", addr, 1);
	addr++;
    }
    archsw.arch_copyin("", addr, 1);
    addr++;
    return(addr);
}