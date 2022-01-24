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
struct ip_list {int used; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct ip_list*,char const*,char const*) ; 
 struct ip_list* FUNC3 (struct ip_list*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 scalar_t__ verb ; 
 int /*<<< orphan*/  FUNC5 (struct ip_list*) ; 

__attribute__((used)) static BIO*
FUNC6(struct ip_list* ip_list, const char* pathname, const char* urlname)
{
	struct ip_list* ip;
	BIO* bio = NULL;
	/* try random address first, and work through the list */
	FUNC5(ip_list);
	while( (ip = FUNC3(ip_list)) ) {
		ip->used = 1;
		bio = FUNC2(ip, pathname, urlname);
		if(bio) break;
	}
	if(!bio) {
		if(verb) FUNC4("could not fetch %s\n", pathname);
		FUNC1(0);
	} else {
		if(verb) FUNC4("fetched %s (%d bytes)\n",
			pathname, (int)FUNC0(bio));
	}
	return bio;
}