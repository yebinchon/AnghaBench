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
typedef  int /*<<< orphan*/  u_int64_t ;
struct sshkey {int dummy; } ;
struct ssh_krl {int dummy; } ;
struct revoked_certs {int /*<<< orphan*/  revoked_serials; } ;

/* Variables and functions */
 int SSH_ERR_INVALID_ARGUMENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ssh_krl*,struct sshkey const*,struct revoked_certs**,int) ; 

int
FUNC2(struct ssh_krl *krl,
    const struct sshkey *ca_key, u_int64_t lo, u_int64_t hi)
{
	struct revoked_certs *rc;
	int r;

	if (lo > hi || lo == 0)
		return SSH_ERR_INVALID_ARGUMENT;
	if ((r = FUNC1(krl, ca_key, &rc, 1)) != 0)
		return r;
	return FUNC0(&rc->revoked_serials, lo, hi);
}