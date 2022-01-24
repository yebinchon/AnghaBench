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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  IPFW_TABLE_CIDR ; 
 int /*<<< orphan*/  IPFW_TABLE_INTERFACE ; 
 int /*<<< orphan*/  IPFW_TABLE_NUMBER ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,struct in6_addr*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char*,struct in_addr*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC5(char *key, uint8_t *ptype)
{
	char *p;
	struct in6_addr addr;
	uint32_t kv;

	if (FUNC1(*key) != 0 || *key == ':') {
		/* Remove / if exists */
		if ((p = FUNC3(key, '/')) != NULL)
			*p = '\0';

		if ((FUNC0(AF_INET, key, &addr) == 1) ||
		    (FUNC0(AF_INET6, key, &addr) == 1)) {
			*ptype = IPFW_TABLE_CIDR;
			if (p != NULL)
				*p = '/';
			return (0);
		} else {
			/* Port or any other key */
			/* Skip non-base 10 entries like 'fa1' */
			kv = FUNC4(key, &p, 10);
			if (*p == '\0') {
				*ptype = IPFW_TABLE_NUMBER;
				return (0);
			} else if ((p != key) && (*p == '.')) {
				/*
				 * Warn on IPv4 address strings
				 * which are "valid" for inet_aton() but not
				 * in inet_pton().
				 *
				 * Typical examples: '10.5' or '10.0.0.05'
				 */
				return (1);
			}
		}
	}

	if (FUNC3(key, '.') == NULL) {
		*ptype = IPFW_TABLE_INTERFACE;
		return (0);
	}

	if (FUNC2(key, (struct in_addr *)&addr) != 0)
		return (1);

	*ptype = IPFW_TABLE_CIDR;
	return (0);
}