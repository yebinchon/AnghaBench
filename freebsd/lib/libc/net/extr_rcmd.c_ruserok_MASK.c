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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int FUNC1 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 

int
FUNC4(const char *rhost, int superuser, const char *ruser, const char *luser)
{
	struct addrinfo hints, *res, *r;
	int error;

	FUNC3(&hints, 0, sizeof(hints));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_DGRAM;	/*dummy*/
	error = FUNC1(rhost, "0", &hints, &res);
	if (error)
		return (-1);

	for (r = res; r; r = r->ai_next) {
		if (FUNC2(r->ai_addr, r->ai_addrlen, superuser, ruser,
		    luser) == 0) {
			FUNC0(res);
			return (0);
		}
	}
	FUNC0(res);
	return (-1);
}