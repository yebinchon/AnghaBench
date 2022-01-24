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
struct sockaddr_storage {int dummy; } ;
struct config_str2list {int /*<<< orphan*/  str2; int /*<<< orphan*/  str; struct config_str2list* next; } ;
struct config_file {struct config_str2list* tcp_connection_limits; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC2(struct config_file* cfg)
{
	int d;
	struct sockaddr_storage a;
	socklen_t alen;
	struct config_str2list* tcl;
	for(tcl=cfg->tcp_connection_limits; tcl; tcl = tcl->next) {
		if(!FUNC1(tcl->str, UNBOUND_DNS_PORT, &a, &alen,
			&d)) {
			FUNC0("cannot parse tcp connection limit address %s %s",
				tcl->str, tcl->str2);
		}
	}
}