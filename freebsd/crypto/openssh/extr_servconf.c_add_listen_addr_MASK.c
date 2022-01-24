#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_4__ {size_t num_ports; int* ports; } ;
typedef  TYPE_1__ ServerOptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,char const*,int) ; 

__attribute__((used)) static void
FUNC1(ServerOptions *options, const char *addr,
    const char *rdomain, int port)
{
	u_int i;

	if (port > 0)
		FUNC0(options, addr, rdomain, port);
	else {
		for (i = 0; i < options->num_ports; i++) {
			FUNC0(options, addr, rdomain,
			    options->ports[i]);
		}
	}
}