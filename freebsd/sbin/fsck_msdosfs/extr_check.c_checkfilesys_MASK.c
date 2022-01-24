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
struct fatEntry {int dummy; } ;
struct bootblock {scalar_t__ ValidFat; int bpbFATs; int NumBad; int NumFree; int ClusterSize; int /*<<< orphan*/  NumFiles; } ;

/* Variables and functions */
 int FSDIRMOD ; 
 int FSDIRTY ; 
 int FSERROR ; 
 int FSFATAL ; 
 int FSFATMOD ; 
 int FSFIXFAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int alwaysno ; 
 scalar_t__ FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,struct bootblock*) ; 
 int FUNC2 (struct bootblock*,struct fatEntry*) ; 
 int FUNC3 (int,struct bootblock*,struct fatEntry*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct bootblock*,struct fatEntry*,struct fatEntry*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct fatEntry*) ; 
 int FUNC8 (int,struct bootblock*,struct fatEntry*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int rdonly ; 
 int FUNC13 (int,struct bootblock*) ; 
 int FUNC14 (int,struct bootblock*,int,struct fatEntry**) ; 
 int FUNC15 (struct bootblock*,struct fatEntry*) ; 
 scalar_t__ skipclean ; 
 int FUNC16 (int,struct bootblock*,struct fatEntry*,int) ; 

int
FUNC17(const char *fname)
{
	int dosfs;
	struct bootblock boot;
	struct fatEntry *fat = NULL;
	int finish_dosdirsection=0;
	u_int i;
	int mod = 0;
	int ret = 8;

	rdonly = alwaysno;
	if (!preen)
		FUNC11("** %s", fname);

	dosfs = FUNC9(fname, rdonly ? O_RDONLY : O_RDWR, 0);
	if (dosfs < 0 && !rdonly) {
		dosfs = FUNC9(fname, O_RDONLY, 0);
		if (dosfs >= 0)
			FUNC12(" (NO WRITE)\n");
		else if (!preen)
			FUNC11("\n");
		rdonly = 1;
	} else if (!preen)
		FUNC11("\n");

	if (dosfs < 0) {
		FUNC10("Can't open `%s'", fname);
		FUNC11("\n");
		return 8;
	}

	if (FUNC13(dosfs, &boot) == FSFATAL) {
		FUNC4(dosfs);
		FUNC11("\n");
		return 8;
	}

	if (skipclean && preen && FUNC1(dosfs, &boot)) {
		FUNC11("%s: ", fname);
		FUNC11("FILESYSTEM CLEAN; SKIPPING CHECKS\n");
		ret = 0;
		goto out;
	}

	if (!preen)  {
		if (boot.ValidFat < 0)
			FUNC11("** Phase 1 - Read and Compare FATs\n");
		else
			FUNC11("** Phase 1 - Read FAT\n");
	}

	mod |= FUNC14(dosfs, &boot, boot.ValidFat >= 0 ? boot.ValidFat : 0, &fat);
	if (mod & FSFATAL) {
		FUNC4(dosfs);
		return 8;
	}

	if (boot.ValidFat < 0)
		for (i = 1; i < boot.bpbFATs; i++) {
			struct fatEntry *currentFat;

			mod |= FUNC14(dosfs, &boot, i, &currentFat);

			if (mod & FSFATAL)
				goto out;

			mod |= FUNC5(&boot, fat, currentFat, i);
			FUNC7(currentFat);
			if (mod & FSFATAL)
				goto out;
		}

	if (!preen)
		FUNC11("** Phase 2 - Check Cluster Chains\n");

	mod |= FUNC2(&boot, fat);
	if (mod & FSFATAL)
		goto out;
	/* delay writing FATs */

	if (!preen)
		FUNC11("** Phase 3 - Checking Directories\n");

	mod |= FUNC15(&boot, fat);
	finish_dosdirsection = 1;
	if (mod & FSFATAL)
		goto out;
	/* delay writing FATs */

	mod |= FUNC8(dosfs, &boot, fat);
	if (mod & FSFATAL)
		goto out;

	if (!preen)
		FUNC11("** Phase 4 - Checking for Lost Files\n");

	mod |= FUNC3(dosfs, &boot, fat);
	if (mod & FSFATAL)
		goto out;

	/* now write the FATs */
	if (mod & (FSFATMOD|FSFIXFAT)) {
		if (FUNC0(1, "Update FATs")) {
			mod |= FUNC16(dosfs, &boot, fat, mod & FSFIXFAT);
			if (mod & FSFATAL)
				goto out;
		} else
			mod |= FSERROR;
	}

	if (boot.NumBad)
		FUNC12("%d files, %d free (%d clusters), %d bad (%d clusters)\n",
		      boot.NumFiles,
		      boot.NumFree * boot.ClusterSize / 1024, boot.NumFree,
		      boot.NumBad * boot.ClusterSize / 1024, boot.NumBad);
	else
		FUNC12("%d files, %d free (%d clusters)\n",
		      boot.NumFiles,
		      boot.NumFree * boot.ClusterSize / 1024, boot.NumFree);

	if (mod && (mod & FSERROR) == 0) {
		if (mod & FSDIRTY) {
			if (FUNC0(1, "MARK FILE SYSTEM CLEAN") == 0)
				mod &= ~FSDIRTY;

			if (mod & FSDIRTY) {
				FUNC12("MARKING FILE SYSTEM CLEAN\n");
				mod |= FUNC16(dosfs, &boot, fat, 1);
			} else {
				FUNC12("\n***** FILE SYSTEM IS LEFT MARKED AS DIRTY *****\n");
				mod |= FSERROR; /* file system not clean */
			}
		}
	}

	if (mod & (FSFATAL | FSERROR))
		goto out;

	ret = 0;

    out:
	if (finish_dosdirsection)
		FUNC6();
	FUNC7(fat);
	FUNC4(dosfs);

	if (mod & (FSFATMOD|FSDIRMOD))
		FUNC12("\n***** FILE SYSTEM WAS MODIFIED *****\n");

	return ret;
}