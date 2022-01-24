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
typedef  int u_int ;
struct ssh {struct kex* kex; } ;
struct kex {int dh_need; int min; int max; int nbits; } ;

/* Variables and functions */
 int DH_GRP_MAX ; 
 int DH_GRP_MIN ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_DH_GEX_GROUP ; 
 int /*<<< orphan*/  SSH2_MSG_KEX_DH_GEX_REQUEST ; 
 int SSH_BUG_DHGEX_LARGE ; 
 int datafellows ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  input_kex_dh_gex_group ; 
 int /*<<< orphan*/  FUNC4 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ssh*,int) ; 
 int FUNC6 (struct ssh*) ; 
 int FUNC7 (struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC8(struct ssh *ssh)
{
	struct kex *kex = ssh->kex;
	int r;
	u_int nbits;

	nbits = FUNC2(kex->dh_need * 8);

	kex->min = DH_GRP_MIN;
	kex->max = DH_GRP_MAX;
	kex->nbits = nbits;
	if (datafellows & SSH_BUG_DHGEX_LARGE)
		kex->nbits = FUNC0(kex->nbits, 4096);
	/* New GEX request */
	if ((r = FUNC7(ssh, SSH2_MSG_KEX_DH_GEX_REQUEST)) != 0 ||
	    (r = FUNC5(ssh, kex->min)) != 0 ||
	    (r = FUNC5(ssh, kex->nbits)) != 0 ||
	    (r = FUNC5(ssh, kex->max)) != 0 ||
	    (r = FUNC6(ssh)) != 0)
		goto out;
	FUNC1("SSH2_MSG_KEX_DH_GEX_REQUEST(%u<%u<%u) sent",
	    kex->min, kex->nbits, kex->max);
#ifdef DEBUG_KEXDH
	fprintf(stderr, "\nmin = %d, nbits = %d, max = %d\n",
	    kex->min, kex->nbits, kex->max);
#endif
	FUNC4(ssh, SSH2_MSG_KEX_DH_GEX_GROUP,
	    &input_kex_dh_gex_group);
	r = 0;
 out:
	return r;
}