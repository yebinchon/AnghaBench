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
struct service {scalar_t__ s_magic; struct service* s_name; } ;

/* Variables and functions */
 scalar_t__ SERVICE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct service*) ; 
 struct service_connection* FUNC2 (struct service*) ; 
 int /*<<< orphan*/  FUNC3 (struct service*,struct service_connection*) ; 

void
FUNC4(struct service *service)
{
	struct service_connection *sconn;

	FUNC0(service->s_magic == SERVICE_MAGIC);

	service->s_magic = 0;
	while ((sconn = FUNC2(service)) != NULL)
		FUNC3(service, sconn);
	FUNC1(service->s_name);
	FUNC1(service);
}