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
struct tcl_list {int dummy; } ;
struct config_str2list {scalar_t__ str2; scalar_t__ str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* tcp_connection_limits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tcl_list*,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC2(struct tcl_list* tcl, struct config_file* cfg)
{
	struct config_str2list* p;
	for(p = cfg->tcp_connection_limits; p; p = p->next) {
		FUNC0(p->str && p->str2);
		if(!FUNC1(tcl, p->str, p->str2, 1))
			return 0;
	}
	return 1;
}