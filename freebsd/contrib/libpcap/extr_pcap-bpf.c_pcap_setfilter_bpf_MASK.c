#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcap_bpf {int filtering_in_kernel; } ;
struct bpf_program {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  errbuf; scalar_t__ cc; int /*<<< orphan*/  fd; int /*<<< orphan*/  fcode; struct pcap_bpf* priv; } ;
typedef  TYPE_1__ pcap_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIOCSETF ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (TYPE_1__*,struct bpf_program*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(pcap_t *p, struct bpf_program *fp)
{
	struct pcap_bpf *pb = p->priv;

	/*
	 * Free any user-mode filter we might happen to have installed.
	 */
	FUNC3(&p->fcode);

	/*
	 * Try to install the kernel filter.
	 */
	if (FUNC1(p->fd, BIOCSETF, (caddr_t)fp) == 0) {
		/*
		 * It worked.
		 */
		pb->filtering_in_kernel = 1;	/* filtering in the kernel */

		/*
		 * Discard any previously-received packets, as they might
		 * have passed whatever filter was formerly in effect, but
		 * might not pass this filter (BIOCSETF discards packets
		 * buffered in the kernel, so you can lose packets in any
		 * case).
		 */
		p->cc = 0;
		return (0);
	}

	/*
	 * We failed.
	 *
	 * If it failed with EINVAL, that's probably because the program
	 * is invalid or too big.  Validate it ourselves; if we like it
	 * (we currently allow backward branches, to support protochain),
	 * run it in userland.  (There's no notion of "too big" for
	 * userland.)
	 *
	 * Otherwise, just give up.
	 * XXX - if the copy of the program into the kernel failed,
	 * we will get EINVAL rather than, say, EFAULT on at least
	 * some kernels.
	 */
	if (errno != EINVAL) {
		FUNC2(p->errbuf, PCAP_ERRBUF_SIZE,
		    errno, "BIOCSETF");
		return (-1);
	}

	/*
	 * install_bpf_program() validates the program.
	 *
	 * XXX - what if we already have a filter in the kernel?
	 */
	if (FUNC0(p, fp) < 0)
		return (-1);
	pb->filtering_in_kernel = 0;	/* filtering in userland */
	return (0);
}