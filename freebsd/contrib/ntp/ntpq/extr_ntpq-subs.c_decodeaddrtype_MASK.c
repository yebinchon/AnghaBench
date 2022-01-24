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
typedef  int u_int32 ;
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char
FUNC4(
	sockaddr_u *sock
	)
{
	char ch = '-';
	u_int32 dummy;

	switch(FUNC0(sock)) {
	case AF_INET:
		dummy = FUNC3(sock);
		ch = (char)(((dummy&0xf0000000)==0xe0000000) ? 'm' :
			((dummy&0x000000ff)==0x000000ff) ? 'b' :
			((dummy&0xffffffff)==0x7f000001) ? 'l' :
			((dummy&0xffffffe0)==0x00000000) ? '-' :
			'u');
		break;
	case AF_INET6:
		if (FUNC1(FUNC2(sock)))
			ch = 'm';
		else
			ch = 'u';
		break;
	default:
		ch = '-';
		break;
	}
	return ch;
}