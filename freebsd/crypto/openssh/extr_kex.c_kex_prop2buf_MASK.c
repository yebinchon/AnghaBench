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
struct sshbuf {int dummy; } ;

/* Variables and functions */
 size_t KEX_COOKIE_LEN ; 
 size_t PROPOSAL_MAX ; 
 int FUNC0 (struct sshbuf*,char*) ; 
 int FUNC1 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sshbuf*) ; 

int
FUNC4(struct sshbuf *b, char *proposal[PROPOSAL_MAX])
{
	u_int i;
	int r;

	FUNC3(b);

	/*
	 * add a dummy cookie, the cookie will be overwritten by
	 * kex_send_kexinit(), each time a kexinit is set
	 */
	for (i = 0; i < KEX_COOKIE_LEN; i++) {
		if ((r = FUNC2(b, 0)) != 0)
			return r;
	}
	for (i = 0; i < PROPOSAL_MAX; i++) {
		if ((r = FUNC0(b, proposal[i])) != 0)
			return r;
	}
	if ((r = FUNC2(b, 0)) != 0 ||	/* first_kex_packet_follows */
	    (r = FUNC1(b, 0)) != 0)	/* uint32 reserved */
		return r;
	return 0;
}