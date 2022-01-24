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
typedef  int /*<<< orphan*/  uint64_t ;
struct service {int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_connections; int /*<<< orphan*/  s_flags; int /*<<< orphan*/ * s_command; int /*<<< orphan*/ * s_limit; int /*<<< orphan*/ * s_name; } ;
typedef  int /*<<< orphan*/  service_limit_func_t ;
typedef  int /*<<< orphan*/  service_command_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  SERVICE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct service*) ; 
 struct service* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

struct service *
FUNC4(const char *name, service_limit_func_t *limitfunc,
    service_command_func_t *commandfunc, uint64_t flags)
{
	struct service *service;

	service = FUNC2(sizeof(*service));
	if (service == NULL)
		return (NULL);
	service->s_name = FUNC3(name);
	if (service->s_name == NULL) {
		FUNC1(service);
		return (NULL);
	}
	service->s_limit = limitfunc;
	service->s_command = commandfunc;
	service->s_flags = flags;
	FUNC0(&service->s_connections);
	service->s_magic = SERVICE_MAGIC;

	return (service);
}