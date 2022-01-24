#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct hostent {int h_length; int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hostent* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(char *host, int prognum, int versnum, int proto)
{
	struct sockaddr_in addr;
	struct hostent *hp;

	FUNC0(host != NULL);

	if ((hp = FUNC1(host)) == NULL)
		return (0);
	FUNC3(&addr, 0, sizeof(addr));
	addr.sin_len = sizeof(struct sockaddr_in);
	addr.sin_family = AF_INET;
	addr.sin_port =  0;
	if (hp->h_length > addr.sin_len)
		hp->h_length = addr.sin_len;
	FUNC2(&addr.sin_addr.s_addr, hp->h_addr, (size_t)hp->h_length);
	/* Inconsistent interfaces need casts! :-( */
	return (FUNC4(&addr, (u_long)prognum, (u_long)versnum, 
	    (u_int)proto));
}