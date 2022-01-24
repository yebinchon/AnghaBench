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
struct putter_hdr {int pth_framelen; } ;
struct puffstestargs {int pta_servfd; int pta_rumpfd; int /*<<< orphan*/ * pta_vn_toserv_ops; int /*<<< orphan*/ * pta_vfs_toserv_ops; } ;
struct puffs_req {size_t preq_optype; int /*<<< orphan*/  preq_opclass; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int BUFSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PUFFSOP_VFS ; 
 scalar_t__ PUFFSOP_VN ; 
 size_t PUFFS_VFS_MAX ; 
 size_t PUFFS_VN_MAX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int mayquit ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static void *
FUNC7(void *arg)
{
	struct putter_hdr *phdr;
	struct puffs_req *preq;
	struct puffstestargs *args = arg;
	char buf[BUFSIZE];
	ssize_t n;
	int comfd, puffsfd;

	comfd = args->pta_servfd;
	puffsfd = args->pta_rumpfd;

	phdr = (void *)buf;
	preq = (void *)buf;

	FUNC4(1);

	for (;;) {
		n = FUNC5(puffsfd, buf, sizeof(*phdr));
		if (n <= 0) {
			FUNC3(stderr, "readshovel r1 %zd / %d\n", n, errno);
			break;
		}

		FUNC2(phdr->pth_framelen < BUFSIZE);
		n = FUNC5(puffsfd, buf+sizeof(*phdr), 
		    phdr->pth_framelen - sizeof(*phdr));
		if (n <= 0) {
			FUNC3(stderr, "readshovel r2 %zd / %d\n", n, errno);
			break;
		}

		/* Analyze request */
		if (FUNC0(preq->preq_opclass) == PUFFSOP_VFS) {
			FUNC2(preq->preq_optype < PUFFS_VFS_MAX);
			args->pta_vfs_toserv_ops[preq->preq_optype]++;
		} else if (FUNC0(preq->preq_opclass) == PUFFSOP_VN) {
			FUNC2(preq->preq_optype < PUFFS_VN_MAX);
			args->pta_vn_toserv_ops[preq->preq_optype]++;
		}

		n = phdr->pth_framelen;
		if (FUNC6(comfd, buf, n) != n) {
			FUNC3(stderr, "readshovel write %zd / %d\n", n, errno);
			break;
		}
	}

	if (n != 0 && mayquit == false)
		FUNC1();
	return NULL;
}