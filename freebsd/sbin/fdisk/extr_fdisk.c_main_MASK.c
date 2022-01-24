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
struct dos_partition {scalar_t__ dp_start; scalar_t__ dp_size; int dp_typ; int dp_flag; } ;
struct TYPE_2__ {struct dos_partition* parts; int /*<<< orphan*/ * bootinst; } ;

/* Variables and functions */
 int ACTIVE ; 
 int B_flag ; 
 int DOSPTYP_386BSD ; 
 int I_flag ; 
 int /*<<< orphan*/  MAX_SEC_SIZE ; 
 int NDOSPART ; 
 int a_flag ; 
 void* b_flag ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* disk ; 
 int /*<<< orphan*/  disksecs ; 
 int /*<<< orphan*/  FUNC3 (struct dos_partition*) ; 
 int dos_cyls ; 
 int /*<<< orphan*/  dos_cylsecs ; 
 int dos_heads ; 
 int dos_sectors ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* f_flag ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* FUNC10 () ; 
 int FUNC11 (int,char**,char*) ; 
 int i_flag ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__ mboot ; 
 scalar_t__ FUNC14 (char*) ; 
 scalar_t__ FUNC15 (int) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int print_config_flag ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int q_flag ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int s_flag ; 
 int secsize ; 
 int t_flag ; 
 int u_flag ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int v_flag ; 
 int /*<<< orphan*/  FUNC25 () ; 

int
FUNC26(int argc, char *argv[])
{
	int	c, i;
	int	partition = -1;
	struct	dos_partition *partp;

	while ((c = FUNC11(argc, argv, "BIab:f:ipqstuv1234")) != -1)
		switch (c) {
		case 'B':
			B_flag = 1;
			break;
		case 'I':
			I_flag = 1;
			break;
		case 'a':
			a_flag = 1;
			break;
		case 'b':
			b_flag = optarg;
			break;
		case 'f':
			f_flag = optarg;
			break;
		case 'i':
			i_flag = 1;
			break;
		case 'p':
			print_config_flag = 1;
			break;
		case 'q':
			q_flag = 1;
			break;
		case 's':
			s_flag = 1;
			break;
		case 't':
			t_flag = 1;
			break;
		case 'u':
			u_flag = 1;
			break;
		case 'v':
			v_flag = 1;
			break;
		case '1':
		case '2':
		case '3':
		case '4':
			partition = c - '0';
			break;
		default:
			FUNC24();
		}
	if (f_flag || i_flag)
		u_flag = 1;
	if (t_flag)
		v_flag = 1;
	argc -= optind;
	argv += optind;

	if (argc == 0) {
		disk = FUNC10();
	} else {
		disk = FUNC8(argv[0]);
		if (disk == NULL)
			FUNC4(1, "unable to get correct path for %s", argv[0]);
	}
	if (FUNC15(u_flag) < 0)
		FUNC4(1, "cannot open disk %s", disk);

	/* (abu)use mboot.bootinst to probe for the sector size */
	if ((mboot.bootinst = FUNC13(MAX_SEC_SIZE)) == NULL)
		FUNC4(1, "cannot allocate buffer to determine disk sector size");
	if (FUNC20(0, mboot.bootinst) == -1)
		FUNC5(1, "could not detect sector size");
	FUNC7(mboot.bootinst);
	mboot.bootinst = NULL;

	if (print_config_flag) {
		if (FUNC21())
			FUNC4(1, "read_s0");

		FUNC18("# %s\n", disk);
		FUNC18("g c%d h%d s%d\n", dos_cyls, dos_heads, dos_sectors);

		for (i = 0; i < NDOSPART; i++) {
			partp = &mboot.parts[i];

			if (partp->dp_start == 0 && partp->dp_size == 0)
				continue;

			FUNC18("p %d 0x%02x %lu %lu\n", i + 1, partp->dp_typ,
			    (u_long)partp->dp_start, (u_long)partp->dp_size);

			/* Fill flags for the partition. */
			if (partp->dp_flag & 0x80)
				FUNC18("a %d\n", i + 1);
		}
		FUNC6(0);
	}
	if (s_flag) {
		if (FUNC21())
			FUNC4(1, "read_s0");
		FUNC18("%s: %d cyl %d hd %d sec\n", disk, dos_cyls, dos_heads,
		    dos_sectors);
		FUNC18("Part  %11s %11s Type Flags\n", "Start", "Size");
		for (i = 0; i < NDOSPART; i++) {
			partp = &mboot.parts[i];
			if (partp->dp_start == 0 && partp->dp_size == 0)
				continue;
			FUNC18("%4d: %11lu %11lu 0x%02x 0x%02x\n", i + 1,
			    (u_long) partp->dp_start,
			    (u_long) partp->dp_size, partp->dp_typ,
			    partp->dp_flag);
		}
		FUNC6(0);
	}

	FUNC18("******* Working on device %s *******\n",disk);

	if (I_flag) {
		FUNC21();
		FUNC22();
		partp = &mboot.parts[0];
		partp->dp_typ = DOSPTYP_386BSD;
		partp->dp_flag = ACTIVE;
		partp->dp_start = dos_sectors;
		partp->dp_size = FUNC23(disksecs, dos_cylsecs) -
		    dos_sectors;
		FUNC3(partp);
		if (v_flag)
			FUNC17();
		if (!t_flag)
			FUNC25();
		FUNC6(0);
	}
	if (f_flag) {
	    if (FUNC21() || i_flag)
		FUNC22();
	    if (!FUNC19(f_flag))
		FUNC6(1);
	    if (v_flag)
		FUNC17();
	    if (!t_flag)
		FUNC25();
	} else {
	    if(u_flag)
		FUNC9();
	    else
		FUNC16();

	    if (FUNC21())
		FUNC12(dos_sectors);

	    FUNC18("Media sector size is %d\n", secsize);
	    FUNC18("Warning: BIOS sector numbering starts with sector 1\n");
	    FUNC18("Information from DOS bootblock is:\n");
	    if (partition == -1)
		for (i = 1; i <= NDOSPART; i++)
		    FUNC2(i);
	    else
		FUNC2(partition);

	    if (u_flag || a_flag)
		FUNC0(partition);

	    if (B_flag)
		FUNC1();

	    if (u_flag || a_flag || B_flag) {
		if (!t_flag) {
		    FUNC18("\nWe haven't changed the partition table yet.  ");
		    FUNC18("This is your last chance.\n");
		}
		FUNC17();
		if (!t_flag) {
		    if (FUNC14("Should we write new partition table?"))
			FUNC25();
		} else {
		    FUNC18("\n-t flag specified -- partition table not written.\n");
		}
	    }
	}

	FUNC6(0);
}