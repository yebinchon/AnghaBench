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
typedef  int uintmax_t ;
struct sun_disklabel {scalar_t__ sl_vtoc_sane; int sl_nsectors; int sl_ntracks; char* sl_text; int sl_ncylinders; char* sl_vtoc_volname; TYPE_2__* sl_vtoc_map; TYPE_1__* sl_part; } ;
struct TYPE_4__ {int /*<<< orphan*/  svtoc_flag; int /*<<< orphan*/  svtoc_tag; } ;
struct TYPE_3__ {int sdkp_nsectors; scalar_t__ sdkp_cyloffset; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SUN_NPART ; 
 int SUN_VOLNAME_LEN ; 
 scalar_t__ SUN_VTOC_SANE ; 
 scalar_t__ cflag ; 
 scalar_t__ eflag ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ hflag ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (int) ; 
 scalar_t__ mediasize ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 
 int sectorsize ; 
 scalar_t__ FUNC5 (char*,char*,char) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct sun_disklabel *sl, const char *disk, FILE *out)
{
	int i, j;
	int havevtoc;
	uintmax_t secpercyl;
	/* Long enough to hex-encode each character. */
	char volname[4 * SUN_VOLNAME_LEN + 1];

	havevtoc = sl->sl_vtoc_sane == SUN_VTOC_SANE;
	secpercyl = sl->sl_nsectors * sl->sl_ntracks;

	FUNC1(out,
"# /dev/%s:\n"
"text: %s\n"
"bytes/sector: %d\n"
"sectors/cylinder: %ju\n",
	    disk,
	    sl->sl_text,
	    sectorsize,
	    secpercyl);
	if (eflag)
		FUNC1(out,
		    "# max sectors/unit (including alt cylinders): %ju\n",
		    (uintmax_t)mediasize / sectorsize);
	FUNC1(out,
"sectors/unit: %ju\n",
	    secpercyl * sl->sl_ncylinders);
	if (havevtoc && sl->sl_vtoc_volname[0] != '\0') {
		for (i = j = 0; i < SUN_VOLNAME_LEN; i++) {
			if (sl->sl_vtoc_volname[i] == '\0')
				break;
			if (FUNC2(sl->sl_vtoc_volname[i]))
				volname[j++] = sl->sl_vtoc_volname[i];
			else
				j += FUNC5(volname + j, "\\x%02X",
				    sl->sl_vtoc_volname[i]);
		}
		volname[j] = '\0';
		FUNC1(out, "volume name: %s\n", volname);
	}
	FUNC1(out,
"\n"
"%d partitions:\n"
"#\n",
	    SUN_NPART);
	if (!hflag) {
		FUNC1(out, "# Size is in %s.", cflag? "cylinders": "sectors");
		if (eflag)
			FUNC1(out,
"  Use %%d%c, %%dK, %%dM or %%dG to specify in %s,\n"
"# kilobytes, megabytes or gigabytes respectively, or '*' to specify rest of\n"
"# disk.\n",
			    cflag? 's': 'c',
			    cflag? "sectors": "cylinders");
		else
			FUNC4('\n', out);
		FUNC1(out, "# Offset is in cylinders.");
		if (eflag)
			FUNC1(out,
"  Use '*' to calculate offsets automatically.\n"
"#\n");
		else
			FUNC4('\n', out);
	}
	if (havevtoc)
		FUNC1(out,
"#    size       offset      tag         flag\n"
"#    ---------- ----------  ----------  ----\n"
			);
	else
		FUNC1(out,
"#    size       offset\n"
"#    ---------- ----------\n"
			);

	for (i = 0; i < SUN_NPART; i++) {
		if (sl->sl_part[i].sdkp_nsectors == 0)
			continue;
		if (hflag) {
			FUNC1(out, "  %c: %10s",
			    'a' + i,
			    FUNC3((uintmax_t)
				sl->sl_part[i].sdkp_nsectors * 512));
			FUNC1(out, " %10s",
			    FUNC3((uintmax_t)
				sl->sl_part[i].sdkp_cyloffset * 512
				* secpercyl));
		} else {
			FUNC1(out, "  %c: %10ju %10u",
			    'a' + i,
			    sl->sl_part[i].sdkp_nsectors / (cflag? secpercyl: 1),
			    sl->sl_part[i].sdkp_cyloffset);
		}
		if (havevtoc)
			FUNC1(out, " %11s %5s",
			    FUNC6(sl->sl_vtoc_map[i].svtoc_tag),
			    FUNC0(sl->sl_vtoc_map[i].svtoc_flag));
		FUNC4('\n', out);
	}
}