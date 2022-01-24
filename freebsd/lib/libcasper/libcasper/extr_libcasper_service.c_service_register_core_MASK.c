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
struct service_connection {int dummy; } ;
struct casper_service {int /*<<< orphan*/  cs_service; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_CASPER_NAME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  casper_command ; 
 int /*<<< orphan*/  casper_limit ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct service_connection* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct casper_service* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(int fd)
{
	struct casper_service *casserv;
	struct service_connection *sconn;

	casserv = FUNC3(CORE_CASPER_NAME, casper_limit,
	    casper_command, 0);
	sconn = FUNC2(casserv->cs_service, fd, NULL);
	if (sconn == NULL) {
		FUNC1(fd);
		FUNC0();
	}
}