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
struct service_connection {scalar_t__ sc_magic; int /*<<< orphan*/  sc_chan; int /*<<< orphan*/  sc_limits; } ;
struct service {scalar_t__ s_magic; int /*<<< orphan*/  s_connections; } ;

/* Variables and functions */
 scalar_t__ SERVICE_CONNECTION_MAGIC ; 
 scalar_t__ SERVICE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct service_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct service_connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc_next ; 

void
FUNC5(struct service *service,
    struct service_connection *sconn)
{

	FUNC1(service->s_magic == SERVICE_MAGIC);
	FUNC1(sconn->sc_magic == SERVICE_CONNECTION_MAGIC);

	FUNC0(&service->s_connections, sconn, sc_next);
	sconn->sc_magic = 0;
	FUNC4(sconn->sc_limits);
	FUNC2(sconn->sc_chan);
	FUNC3(sconn);
}