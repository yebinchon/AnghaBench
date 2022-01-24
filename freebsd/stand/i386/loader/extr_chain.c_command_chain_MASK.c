#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  scalar_t__ uint16_t ;
struct stat {int st_size; } ;
struct i386_devdesc {int dummy; } ;
struct TYPE_4__ {int (* arch_readin ) (int,int,int) ;} ;
struct TYPE_3__ {int src; int dest; int size; } ;

/* Variables and functions */
 int CMD_ERROR ; 
 scalar_t__ DOSMAGIC ; 
 int DOSMAGICOFFSET ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (int) ; 
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  VE_MUST ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_2__ archsw ; 
 int /*<<< orphan*/  FUNC2 (struct i386_devdesc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  command_errbuf ; 
 char* command_errmsg ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void**,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  relocater ; 
 TYPE_1__* relocater_data ; 
 int /*<<< orphan*/  relocater_size ; 
 scalar_t__ relocator_a20_enabled ; 
 scalar_t__ relocator_cs ; 
 scalar_t__ relocator_ds ; 
 int /*<<< orphan*/  relocator_edx ; 
 scalar_t__ relocator_es ; 
 int /*<<< orphan*/  relocator_esi ; 
 scalar_t__ relocator_fs ; 
 scalar_t__ relocator_gs ; 
 int relocator_ip ; 
 int relocator_sp ; 
 scalar_t__ relocator_ss ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 
 int FUNC13 (int,int,int) ; 
 scalar_t__ FUNC14 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(int argc, char *argv[])
{
	int fd, len, size = SECTOR_SIZE;
	struct stat st;
	vm_offset_t mem = 0x100000;
	struct i386_devdesc *rootdev;

	if (argc == 1) {
		command_errmsg = "no device or file name specified";
		return (CMD_ERROR);
	}
	if (argc != 2) {
		command_errmsg = "invalid trailing arguments";
		return (CMD_ERROR);
	}

	fd = FUNC8(argv[1], O_RDONLY);
	if (fd == -1) {
		command_errmsg = "open failed";
		return (CMD_ERROR);
	}

#ifdef LOADER_VERIEXEC
	if (verify_file(fd, argv[1], 0, VE_MUST) < 0) {
		sprintf(command_errbuf, "can't verify: %s", argv[1]);
		close(fd);
		return (CMD_ERROR);
	}
#endif

	len = FUNC11(argv[1]);
	if (argv[1][len-1] != ':') {
		if (FUNC5(fd, &st) == -1) {
			command_errmsg = "stat failed";
			FUNC3(fd);
			return (CMD_ERROR);
		}
		size = st.st_size;
	} else if (FUNC12(argv[1], "disk", 4) != 0) {
		command_errmsg = "can only use disk device";
		FUNC3(fd);
		return (CMD_ERROR);
	}

	FUNC7((void **)(&rootdev), argv[1], NULL);
	if (rootdev == NULL) {
		command_errmsg = "can't determine root device";
		FUNC3(fd);
		return (CMD_ERROR);
	}

	if (archsw.arch_readin(fd, mem, size) != size) {
		command_errmsg = "failed to read disk";
		FUNC3(fd);
		return (CMD_ERROR);
	}
	FUNC3(fd);

	if (argv[1][len-1] == ':' &&
	    *((uint16_t *)FUNC0(mem + DOSMAGICOFFSET)) != DOSMAGIC) {
		command_errmsg = "wrong magic";
		return (CMD_ERROR);
	}

	relocater_data[0].src = mem;
	relocater_data[0].dest = 0x7C00;
	relocater_data[0].size = size;

	relocator_edx = FUNC2(rootdev);
	relocator_esi = relocater_size;
	relocator_ds = 0;
	relocator_es = 0;
	relocator_fs = 0;
	relocator_gs = 0;
	relocator_ss = 0;
	relocator_cs = 0;
	relocator_sp = 0x7C00;
	relocator_ip = 0x7C00;
	relocator_a20_enabled = 0;

	FUNC6(relocater, 0x600, relocater_size);

	FUNC4();

	FUNC1((void *)0x600);

	FUNC9("exec returned");
	return (CMD_ERROR);		/* not reached */
}