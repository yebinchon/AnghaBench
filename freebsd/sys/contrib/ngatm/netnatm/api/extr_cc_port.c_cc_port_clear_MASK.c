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
typedef  int /*<<< orphan*/  u_int ;
struct ccport {int /*<<< orphan*/  addr_list; } ;
struct ccdata {int dummy; } ;
struct ccaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccaddr*) ; 
 int ENOENT ; 
 struct ccaddr* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ccaddr*,int /*<<< orphan*/ ) ; 
 struct ccport* FUNC3 (struct ccdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port_link ; 

int
FUNC4(struct ccdata *cc, u_int portno)
{
	struct ccaddr *addr;
	struct ccport *port;

	if ((port = FUNC3(cc, portno)) == NULL)
		return (ENOENT);

	while ((addr = FUNC1(&port->addr_list)) != NULL) {
		FUNC2(&port->addr_list, addr, port_link);
		FUNC0(addr);
	}
	return (0);
}