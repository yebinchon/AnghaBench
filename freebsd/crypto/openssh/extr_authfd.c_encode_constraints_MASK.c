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
typedef  scalar_t__ u_int ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_AGENT_CONSTRAIN_CONFIRM ; 
 int /*<<< orphan*/  SSH_AGENT_CONSTRAIN_LIFETIME ; 
 int /*<<< orphan*/  SSH_AGENT_CONSTRAIN_MAXSIGN ; 
 int FUNC0 (struct sshbuf*,scalar_t__) ; 
 int FUNC1 (struct sshbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct sshbuf *m, u_int life, u_int confirm, u_int maxsign)
{
	int r;

	if (life != 0) {
		if ((r = FUNC1(m, SSH_AGENT_CONSTRAIN_LIFETIME)) != 0 ||
		    (r = FUNC0(m, life)) != 0)
			goto out;
	}
	if (confirm != 0) {
		if ((r = FUNC1(m, SSH_AGENT_CONSTRAIN_CONFIRM)) != 0)
			goto out;
	}
	if (maxsign != 0) {
		if ((r = FUNC1(m, SSH_AGENT_CONSTRAIN_MAXSIGN)) != 0 ||
		    (r = FUNC0(m, maxsign)) != 0)
			goto out;
	}
	r = 0;
 out:
	return r;
}