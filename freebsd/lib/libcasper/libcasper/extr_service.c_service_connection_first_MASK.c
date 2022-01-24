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
struct service_connection {scalar_t__ sc_magic; } ;
struct service {scalar_t__ s_magic; int /*<<< orphan*/  s_connections; } ;

/* Variables and functions */
 scalar_t__ SERVICE_CONNECTION_MAGIC ; 
 scalar_t__ SERVICE_MAGIC ; 
 struct service_connection* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

struct service_connection *
FUNC2(struct service *service)
{
	struct service_connection *sconn;

	FUNC1(service->s_magic == SERVICE_MAGIC);

	sconn = FUNC0(&service->s_connections);
	FUNC1(sconn == NULL ||
	    sconn->sc_magic == SERVICE_CONNECTION_MAGIC);
	return (sconn);
}