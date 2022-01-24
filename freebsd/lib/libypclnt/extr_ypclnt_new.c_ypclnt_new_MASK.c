#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* server; struct TYPE_5__* map; struct TYPE_5__* domain; } ;
typedef  TYPE_1__ ypclnt_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (char const*) ; 

ypclnt_t *
FUNC3(const char *domain, const char *map, const char *server)
{
	ypclnt_t *ypclnt;

	if ((ypclnt = FUNC0(1, sizeof *ypclnt)) == NULL)
		return (NULL);
	if (domain != NULL && (ypclnt->domain = FUNC2(domain)) == NULL)
		goto fail;
	if (map != NULL && (ypclnt->map = FUNC2(map)) == NULL)
		goto fail;
	if (server != NULL && (ypclnt->server = FUNC2(server)) == NULL)
		goto fail;
	return (ypclnt);
 fail:
	FUNC1(ypclnt->domain);
	FUNC1(ypclnt->map);
	FUNC1(ypclnt->server);
	FUNC1(ypclnt);
	return (NULL);
}