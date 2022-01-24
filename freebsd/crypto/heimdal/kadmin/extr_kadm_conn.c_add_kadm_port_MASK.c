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
struct kadm_port {unsigned int def_port; struct kadm_port* next; int /*<<< orphan*/  port; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 struct kadm_port* kadm_ports ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 struct kadm_port* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(krb5_context contextp, const char *service, unsigned int port)
{
    struct kadm_port *p;
    p = FUNC1(sizeof(*p));
    if(p == NULL) {
	FUNC0(contextp, "failed to allocate %lu bytes\n",
		   (unsigned long)sizeof(*p));
	return;
    }

    p->port = FUNC2(service);
    p->def_port = port;

    p->next = kadm_ports;
    kadm_ports = p;
}