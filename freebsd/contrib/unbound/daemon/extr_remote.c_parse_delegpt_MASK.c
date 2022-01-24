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
struct sockaddr_storage {int dummy; } ;
struct delegpt {int has_parent_side_NS; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sockaddr_storage*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*,struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct delegpt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct delegpt* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct delegpt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*,int*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC10 (char*,char) ; 

__attribute__((used)) static struct delegpt*
FUNC11(RES* ssl, char* args, uint8_t* nm, int allow_names)
{
	/* parse args and add in */
	char* p = args;
	char* todo;
	struct delegpt* dp = FUNC3(nm);
	struct sockaddr_storage addr;
	socklen_t addrlen;
	char* auth_name;
	if(!dp) {
		(void)FUNC9(ssl, "error out of memory\n");
		return NULL;
	}
	while(p) {
		todo = p;
		p = FUNC10(p, ' '); /* find next spot, if any */
		if(p) {
			*p++ = 0;	/* end this spot */
			p = FUNC8(p); /* position at next spot */
		}
		/* parse address */
		if(!FUNC0(todo, &addr, &addrlen, &auth_name)) {
			if(allow_names) {
				uint8_t* n = NULL;
				size_t ln;
				int lb;
				if(!FUNC7(ssl, todo, &n, &ln, &lb)) {
					(void)FUNC9(ssl, "error cannot "
						"parse IP address or name "
						"'%s'\n", todo);
					FUNC4(dp);
					return NULL;
				}
				if(!FUNC2(dp, n, 0)) {
					(void)FUNC9(ssl, "error out of memory\n");
					FUNC5(n);
					FUNC4(dp);
					return NULL;
				}
				FUNC5(n);

			} else {
				(void)FUNC9(ssl, "error cannot parse"
					" IP address '%s'\n", todo);
				FUNC4(dp);
				return NULL;
			}
		} else {
#if ! defined(HAVE_SSL_SET1_HOST) && ! defined(HAVE_X509_VERIFY_PARAM_SET1_HOST)
			if(auth_name)
			  FUNC6("no name verification functionality in "
				"ssl library, ignored name for %s", todo);
#endif
			/* add address */
			if(!FUNC1(dp, &addr, addrlen, 0, 0,
				auth_name)) {
				(void)FUNC9(ssl, "error out of memory\n");
				FUNC4(dp);
				return NULL;
			}
		}
	}
	dp->has_parent_side_NS = 1;
	return dp;
}