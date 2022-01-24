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
typedef  int /*<<< orphan*/  tmpl ;
struct cmd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/ * template; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  WDC_NVME_CAP_DIAG_CMD ; 
 int /*<<< orphan*/  WDC_NVME_CAP_DIAG_OPCODE ; 
 int /*<<< orphan*/  FUNC0 (int,char**,struct cmd const*) ; 
 scalar_t__ FUNC1 (int,char**,struct cmd const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int,int) ; 
 TYPE_1__ opt ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(const struct cmd *f, int argc, char *argv[])
{
	char tmpl[MAXPATHLEN];
 	int fd;

	if (FUNC1(argc, argv, f))
		return;
	if (opt.template == NULL) {
		FUNC4(stderr, "Missing template arg.\n");
		FUNC0(argc, argv, f);
	}
	FUNC6(tmpl, opt.template, sizeof(tmpl));
	FUNC5(opt.dev, &fd, 1, 1);
	FUNC7(fd, tmpl, "cap_diag", WDC_NVME_CAP_DIAG_OPCODE,
	    WDC_NVME_CAP_DIAG_CMD, 4);

	FUNC2(fd);

	FUNC3(1);	
}