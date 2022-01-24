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
struct ether_addr {int /*<<< orphan*/ * octet; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZ ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  _PATH_ETHERS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ether_addr*,char*) ; 
 char* FUNC2 (struct ether_addr const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (char**) ; 
 scalar_t__ FUNC11 (char*,char*,char*,int /*<<< orphan*/ ,char**,int*) ; 

int
FUNC12(char *hostname, const struct ether_addr *e)
{
	FILE *fp;
	char buf[BUFSIZ + 2];
	struct ether_addr local_ether;
	char local_host[MAXHOSTNAMELEN];
#ifdef YP
	char *result;
	int resultlen;
	char *ether_a;
	char *yp_domain;
#endif

	if ((fp = FUNC5(_PATH_ETHERS, "re")) == NULL)
		return (1);
	while (FUNC4(buf,BUFSIZ,fp)) {
		if (buf[0] == '#')
			continue;
#ifdef YP
		if (buf[0] == '+') {
			if (yp_get_default_domain(&yp_domain))
				continue;
			ether_a = ether_ntoa(e);
			if (yp_match(yp_domain, "ethers.byaddr", ether_a,
			    strlen(ether_a), &result, &resultlen)) {
				continue;
			}
			strncpy(buf, result, resultlen);
			buf[resultlen] = '\0';
			free(result);
		}
#endif
		if (!FUNC1(buf, &local_ether, local_host)) {
			if (!FUNC0((char *)&local_ether.octet[0],
			    (char *)&e->octet[0], 6)) {
				/* We have a match. */
				FUNC7(hostname, local_host);
				FUNC3(fp);
				return(0);
			}
		}
	}
	FUNC3(fp);
	return (1);
}