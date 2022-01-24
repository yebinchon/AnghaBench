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
struct service {int dummy; } ;
struct casper_service {struct service* cs_service; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct casper_service* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct service*,int,int) ; 

void
FUNC8(int chanfd)
{
	struct casper_service *casserv;
	struct service *service;
	const char *servname;
	nvlist_t *nvl;
	int procfd;

	nvl = FUNC4(chanfd, 0);
	if (nvl == NULL)
		FUNC0(1);
	if (!FUNC2(nvl, "service"))
		FUNC0(1);
	servname = FUNC3(nvl, "service");
	casserv = FUNC6(servname);
	if (casserv == NULL)
		FUNC0(1);
	service = casserv->cs_service;
	procfd = FUNC5(nvl, "procfd");
	FUNC1(nvl);

	FUNC7(service, chanfd, procfd);
	/* Not reached. */
	FUNC0(1);
}