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
struct eui64 {int dummy; } ;
typedef  int /*<<< orphan*/  local_host ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZ ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  _PATH_EUI64 ; 
 int /*<<< orphan*/  FUNC0 (struct eui64*,struct eui64*,int) ; 
 scalar_t__ FUNC1 (char*,struct eui64*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 scalar_t__ FUNC9 (char**) ; 
 scalar_t__ FUNC10 (char*,char*,char const*,int /*<<< orphan*/ ,char**,int*) ; 

int
FUNC11(const char *hostname, struct eui64 *id)
{
	FILE *fp;
	char buf[BUFSIZ + 2];
	struct eui64 local_eui64;
	char local_host[MAXHOSTNAMELEN];
#ifdef YP
	char *result;
	int resultlen;
	char *yp_domain;
#endif
	if ((fp = FUNC4(_PATH_EUI64, "re")) == NULL)
		return (1);

	while (FUNC3(buf,BUFSIZ,fp)) {
		if (buf[0] == '#')
			continue;
#ifdef YP
		if (buf[0] == '+') {
			if (yp_get_default_domain(&yp_domain))
				continue;
			if (yp_match(yp_domain, "eui64.byname", hostname,
				strlen(hostname), &result, &resultlen)) {
				continue;
			}
			strncpy(buf, result, resultlen);
			buf[resultlen] = '\0';
			free(result);
		}
#endif
		if (FUNC1(buf, &local_eui64, local_host,
		    sizeof(local_host)) == 0) {
			if (FUNC6(hostname, local_host) == 0) {
				/* We have a match */
				FUNC0(&local_eui64, id, sizeof(struct eui64));
				FUNC2(fp);
				return(0);
			}
		}
	}
	FUNC2(fp);
	return (1);
}