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
struct TYPE_2__ {int /*<<< orphan*/  fp_subtype_nm; int /*<<< orphan*/  fp_version_nm; int /*<<< orphan*/  fp_class_nm; int /*<<< orphan*/  fp_os; } ;
struct pf_osfp_ioctl {TYPE_1__ fp_os; } ;
struct name_entry {int nm_num; void* nm_sublist_num; int /*<<< orphan*/  nm_sublist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pf_osfp_ioctl*,char*,int,int,int) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 void* class_count ; 
 int /*<<< orphan*/  classes ; 
 int /*<<< orphan*/  fingerprint_count ; 
 struct name_entry* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(struct pf_osfp_ioctl *fp)
{
	struct name_entry *nm_class, *nm_version, *nm_subtype;
	int class, version, subtype;

	FUNC2(fp->fp_os.fp_os, class, version, subtype);

	nm_class = FUNC3(&classes, fp->fp_os.fp_class_nm);
	if (nm_class->nm_num == 0) {
		nm_class->nm_num = class;
		class_count = FUNC1(class_count, class);
	}

	nm_version = FUNC3(&nm_class->nm_sublist,
	    fp->fp_os.fp_version_nm);
	if (nm_version) {
		if (nm_version->nm_num == 0) {
			nm_version->nm_num = version;
			nm_class->nm_sublist_num = FUNC1(nm_class->nm_sublist_num,
			    version);
		}
		nm_subtype = FUNC3(&nm_version->nm_sublist,
		    fp->fp_os.fp_subtype_nm);
		if (nm_subtype) {
			if (nm_subtype->nm_num == 0) {
				nm_subtype->nm_num = subtype;
				nm_version->nm_sublist_num =
				    FUNC1(nm_version->nm_sublist_num, subtype);
			}
		}
	}


	fingerprint_count++;
	FUNC0(fp, "import signature %d:%d:%d", class, version, subtype);
}