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
typedef  size_t u_int ;
struct sshkey_cert {size_t nprincipals; int /*<<< orphan*/ * principals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(const char *principal_list, struct sshkey_cert *cert)
{
	char *result;
	u_int i;

	/* XXX percent_expand() sequences for authorized_principals? */

	for (i = 0; i < cert->nprincipals; i++) {
		if ((result = FUNC2(cert->principals[i],
		    principal_list, NULL)) != NULL) {
			FUNC0("matched principal from key options \"%.100s\"",
			    result);
			FUNC1(result);
			return 1;
		}
	}
	return 0;
}