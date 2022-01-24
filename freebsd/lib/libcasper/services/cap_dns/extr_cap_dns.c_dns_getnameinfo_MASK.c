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
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sast ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EAI_FAIL ; 
 int EAI_MEMORY ; 
 int NO_RECOVERY ; 
 char* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct sockaddr*,int,char*,size_t,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_storage*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (int /*<<< orphan*/  const*,char*,size_t*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int
FUNC10(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
	struct sockaddr_storage sast;
	const void *sabin;
	char *host, *serv;
	size_t sabinsize, hostlen, servlen;
	socklen_t salen;
	int error, flags;

	if (!FUNC2(limits, "ADDR2NAME") &&
	    !FUNC2(limits, "ADDR"))
		return (NO_RECOVERY);

	error = 0;
	host = serv = NULL;
	FUNC6(&sast, 0, sizeof(sast));

	hostlen = (size_t)FUNC8(nvlin, "hostlen");
	servlen = (size_t)FUNC8(nvlin, "servlen");

	if (hostlen > 0) {
		host = FUNC0(1, hostlen + 1);
		if (host == NULL) {
			error = EAI_MEMORY;
			goto out;
		}
	}
	if (servlen > 0) {
		serv = FUNC0(1, servlen + 1);
		if (serv == NULL) {
			error = EAI_MEMORY;
			goto out;
		}
	}

	sabin = FUNC7(nvlin, "sa", &sabinsize);
	if (sabinsize > sizeof(sast)) {
		error = EAI_FAIL;
		goto out;
	}

	FUNC5(&sast, sabin, sabinsize);
	salen = (socklen_t)sabinsize;

	if ((sast.ss_family != AF_INET ||
	     salen != sizeof(struct sockaddr_in)) &&
	    (sast.ss_family != AF_INET6 ||
	     salen != sizeof(struct sockaddr_in6))) {
		error = EAI_FAIL;
		goto out;
	}

	if (!FUNC1(limits, (int)sast.ss_family)) {
		error = NO_RECOVERY;
		goto out;
	}

	flags = (int)FUNC8(nvlin, "flags");

	error = FUNC4((struct sockaddr *)&sast, salen, host, hostlen,
	    serv, servlen, flags);
	if (error != 0)
		goto out;

	if (host != NULL)
		FUNC9(nvlout, "host", host);
	if (serv != NULL)
		FUNC9(nvlout, "serv", serv);
out:
	if (error != 0) {
		FUNC3(host);
		FUNC3(serv);
	}
	return (error);
}