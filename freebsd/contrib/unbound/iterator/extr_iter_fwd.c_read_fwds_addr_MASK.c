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
struct sockaddr_storage {int dummy; } ;
struct delegpt {int dummy; } ;
struct config_stub {int /*<<< orphan*/  name; struct config_strlist* addrs; } ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*,struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int 
FUNC4(struct config_stub* s, struct delegpt* dp)
{
	struct config_strlist* p;
	struct sockaddr_storage addr;
	socklen_t addrlen;
	char* tls_auth_name;
	for(p = s->addrs; p; p = p->next) {
		FUNC2(p->str);
		if(!FUNC0(p->str, &addr, &addrlen, &tls_auth_name)) {
			FUNC3("cannot parse forward %s ip address: '%s'", 
				s->name, p->str);
			return 0;
		}
#if ! defined(HAVE_SSL_SET1_HOST) && ! defined(HAVE_X509_VERIFY_PARAM_SET1_HOST)
		if(tls_auth_name)
			FUNC3("no name verification functionality in "
				"ssl library, ignored name for %s", p->str);
#endif
		if(!FUNC1(dp, &addr, addrlen, 0, 0,
			tls_auth_name)) {
			FUNC3("out of memory");
			return 0;
		}
	}
	return 1;
}