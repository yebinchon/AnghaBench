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
struct hostent {char* h_name; int /*<<< orphan*/  h_addrtype; int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (struct hostent*) ; 
 struct hostent* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct hostent* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC6(pthread_t self, char *host)
{
	char buf[1024];
	struct hostent *hp, *hp2;
	int len, h_error;

	hp = FUNC2(host, AF_INET, 0, &h_error);
	len = FUNC4(buf, sizeof(buf), "%p: host %s %s\n",
	    self, host, (hp == NULL) ? "not found" : "ok");
	(void)FUNC5(STDOUT_FILENO, buf, len);
	if (hp) {
		FUNC3(buf, hp->h_addr, hp->h_length);
		hp2 = FUNC1(buf, hp->h_length, hp->h_addrtype,
		    &h_error);
		if (hp2) {
			len = FUNC4(buf, sizeof(buf),
			    "%p: reverse %s\n", self, hp2->h_name);
			(void)FUNC5(STDOUT_FILENO, buf, len);
		}
		if (hp2)
			FUNC0(hp2);
	}
	if (hp)
		FUNC0(hp);
	return hp ? 0 : -1;
}