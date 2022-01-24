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
struct nvme_io_test {int num_threads; scalar_t__ time; int /*<<< orphan*/  size; int /*<<< orphan*/  opc; int /*<<< orphan*/  flags; } ;
struct cmd {int dummy; } ;
typedef  int /*<<< orphan*/  io_test ;
struct TYPE_2__ {char* op; char* flags; char* intr; int threads; scalar_t__ time; int /*<<< orphan*/  perthread; int /*<<< orphan*/  dev; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_BIO_TEST ; 
 int /*<<< orphan*/  NVME_IO_TEST ; 
 int /*<<< orphan*/  NVME_OPC_READ ; 
 int /*<<< orphan*/  NVME_OPC_WRITE ; 
 int /*<<< orphan*/  NVME_TEST_FLAG_REFTHREAD ; 
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 scalar_t__ FUNC1 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,struct nvme_io_test*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_io_test*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int,int) ; 
 TYPE_1__ opt ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_io_test*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 

__attribute__((used)) static void
FUNC12(const struct cmd *f, int argc, char *argv[])
{
	struct nvme_io_test		io_test;
	int				fd;
	u_long				ioctl_cmd = NVME_IO_TEST;

	FUNC7(&io_test, 0, sizeof(io_test));
	if (FUNC1(argc, argv, f))
		return;
	
	if (opt.op == NULL)
		FUNC0(argc, argv, f);
	if (opt.flags != NULL && FUNC11(opt.flags, "refthread") == 0)
		io_test.flags |= NVME_TEST_FLAG_REFTHREAD;
	if (opt.intr != NULL) {
		if (FUNC11(opt.intr, "bio") == 0 ||
		    FUNC11(opt.intr, "wait") == 0)
			ioctl_cmd = NVME_BIO_TEST;
		else if (FUNC11(opt.intr, "io") == 0 ||
		    FUNC11(opt.intr, "intr") == 0)
			ioctl_cmd = NVME_IO_TEST;
		else {
			FUNC5(stderr, "Unknown interrupt test type %s\n", opt.intr);
			FUNC0(argc, argv, f);
		}
	}
	if (opt.threads <= 0 || opt.threads > 128) {
		FUNC5(stderr, "Bad number of threads %d\n", opt.threads);
		FUNC0(argc, argv, f);
	}
	io_test.num_threads = opt.threads;
	if (FUNC10(opt.op, "read") == 0)
		io_test.opc = NVME_OPC_READ;
	else if (FUNC10(opt.op, "write") == 0)
		io_test.opc = NVME_OPC_WRITE;
	else {
		FUNC5(stderr, "\"%s\" not valid opcode.\n", opt.op);
		FUNC0(argc, argv, f);
	}
	if (opt.time == 0) {
		FUNC5(stderr, "No time speciifed\n");
		FUNC0(argc, argv, f);
	}
	io_test.time = opt.time;
	io_test.size = opt.size;
	FUNC8(opt.dev, &fd, 1, 1);
	if (FUNC6(fd, ioctl_cmd, &io_test) < 0)
		FUNC3(1, "ioctl NVME_IO_TEST failed");

	FUNC2(fd);
	FUNC9(&io_test, opt.perthread);
	FUNC4(0);
}