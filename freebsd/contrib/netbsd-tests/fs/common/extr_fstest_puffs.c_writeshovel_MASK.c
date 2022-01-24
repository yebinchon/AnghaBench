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
typedef  int uint64_t ;
struct putter_hdr {int pth_framelen; } ;
struct puffstestargs {int pta_servfd; int pta_rumpfd; } ;
struct puffs_req {scalar_t__ preq_optype; scalar_t__ preq_rv; int /*<<< orphan*/  preq_opclass; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int BUFSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PUFFSOP_VFS ; 
 scalar_t__ PUFFS_VFS_UNMOUNT ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int mayquit ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (int,char*,size_t) ; 

__attribute__((used)) static void *
FUNC8(void *arg)
{
	struct puffstestargs *args = arg;
	struct putter_hdr *phdr;
	struct puffs_req *preq;
	char buf[BUFSIZE];
	size_t toread;
	ssize_t n;
	int comfd, puffsfd;

	FUNC5(1);

	comfd = args->pta_servfd;
	puffsfd = args->pta_rumpfd;

	phdr = (struct putter_hdr *)buf;
	preq = (void *)buf;

	for (;;) {
		uint64_t off;

		/*
		 * Need to write everything to the "kernel" in one chunk,
		 * so make sure we have it here.
		 */
		off = 0;
		toread = sizeof(struct putter_hdr);
		FUNC3(toread < BUFSIZE);
		do {
			n = FUNC7(comfd, buf+off, toread);
			if (n <= 0) {
				FUNC4(stderr, "writeshovel read %zd / %d\n",
				    n, errno);
				goto out;
			}
			off += n;
			if (off >= sizeof(struct putter_hdr))
				toread = phdr->pth_framelen - off;
			else
				toread = off - sizeof(struct putter_hdr);
		} while (toread);

		if (FUNC1(
		    FUNC0(preq->preq_opclass) == PUFFSOP_VFS
		    && preq->preq_optype == PUFFS_VFS_UNMOUNT)) {
			if (preq->preq_rv == 0)
				mayquit = true;
		}

		n = FUNC6(puffsfd, buf, phdr->pth_framelen);
		if ((size_t)n != phdr->pth_framelen) {
			FUNC4(stderr, "writeshovel wr %zd / %d\n", n, errno);
			break;
		}
	}

 out:
	if (n != 0)
		FUNC2();
	return NULL;
}