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
typedef  int uint16_t ;
struct vdd {int vdd_type; int /*<<< orphan*/  rootent; int /*<<< orphan*/  location_type_M_path_table; int /*<<< orphan*/  location_type_L_path_table; int /*<<< orphan*/  path_table_size; } ;
struct TYPE_2__ {char* s; } ;
struct iso9660 {int volume_sequence_number; int /*<<< orphan*/  birth_time; int /*<<< orphan*/  bibliographic_file_identifier; int /*<<< orphan*/  abstract_file_identifier; int /*<<< orphan*/  copyright_file_identifier; int /*<<< orphan*/  application_identifier; int /*<<< orphan*/  data_preparer_identifier; int /*<<< orphan*/  publisher_identifier; int /*<<< orphan*/  volume_space_size; TYPE_1__ volume_identifier; } ;
struct archive_write {struct iso9660* format_data; } ;
typedef  int /*<<< orphan*/  identifier ;
typedef  enum vdc { ____Placeholder_vdc } vdc ;
typedef  enum VD_type { ____Placeholder_VD_type } VD_type ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  A_CHAR ; 
 int /*<<< orphan*/  DIR_REC_VD ; 
 int /*<<< orphan*/  D_CHAR ; 
 int LOGICAL_BLOCK_SIZE ; 
 int VDC_LOWERCASE ; 
 int VDC_STD ; 
 int VDC_UCS2 ; 
#define  VDD_ENHANCED 130 
#define  VDD_JOLIET 129 
#define  VDD_PRIMARY 128 
 int VDT_PRIMARY ; 
 int VDT_SUPPLEMENTARY ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int /*<<< orphan*/ ,struct iso9660*,int /*<<< orphan*/ ,int const) ; 
 int FUNC6 (unsigned char*,int,int,int,struct archive_write*,struct vdd*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct archive_write*,unsigned char*,int,int,char*,int) ; 
 int FUNC12 (struct archive_write*,unsigned char*,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,int,int) ; 
 unsigned char* FUNC14 (struct archive_write*) ; 
 int FUNC15 (struct archive_write*,int) ; 

__attribute__((used)) static int
FUNC16(struct archive_write *a, struct vdd *vdd)
{
	struct iso9660 *iso9660;
	unsigned char *bp;
	uint16_t volume_set_size = 1;
	char identifier[256];
	enum VD_type vdt;
	enum vdc vdc;
	unsigned char vd_ver, fst_ver;
	int r;

	iso9660 = a->format_data;
	switch (vdd->vdd_type) {
	case VDD_JOLIET:
		vdt = VDT_SUPPLEMENTARY;
		vd_ver = fst_ver = 1;
		vdc = VDC_UCS2;
		break;
	case VDD_ENHANCED:
		vdt = VDT_SUPPLEMENTARY;
		vd_ver = fst_ver = 2;
		vdc = VDC_LOWERCASE;
		break;
	case VDD_PRIMARY:
	default:
		vdt = VDT_PRIMARY;
		vd_ver = fst_ver = 1;
#ifdef COMPAT_MKISOFS
		vdc = VDC_LOWERCASE;
#else
		vdc = VDC_STD;
#endif
		break;
	}

	bp = FUNC14(a) -1;
	/* Volume Descriptor Type */
	FUNC2(bp, vdt, vd_ver);
	/* Unused Field */
	FUNC13(bp, 8, 8);
	/* System Identifier */
	FUNC0(identifier, sizeof(identifier));
	r = FUNC11(a, bp, 9, 40, identifier, vdc);
	if (r != ARCHIVE_OK)
		return (r);
	/* Volume Identifier */
	r = FUNC12(a, bp, 41, 72,
	    iso9660->volume_identifier.s, vdc);
	if (r != ARCHIVE_OK)
		return (r);
	/* Unused Field */
	FUNC13(bp, 73, 80);
	/* Volume Space Size */
	FUNC10(bp+81, iso9660->volume_space_size);
	if (vdd->vdd_type == VDD_JOLIET) {
		/* Escape Sequences */
		bp[89] = 0x25;/* UCS-2 Level 3 */
		bp[90] = 0x2F;
		bp[91] = 0x45;
		FUNC1(bp + 92, 0, 120 - 92 + 1);
	} else {
		/* Unused Field */
		FUNC13(bp, 89, 120);
	}
	/* Volume Set Size */
	FUNC7(bp+121, volume_set_size);
	/* Volume Sequence Number */
	FUNC7(bp+125, iso9660->volume_sequence_number);
	/* Logical Block Size */
	FUNC7(bp+129, LOGICAL_BLOCK_SIZE);
	/* Path Table Size */
	FUNC10(bp+133, vdd->path_table_size);
	/* Location of Occurrence of Type L Path Table */
	FUNC8(bp+141, vdd->location_type_L_path_table);
	/* Location of Optional Occurrence of Type L Path Table */
	FUNC8(bp+145, 0);
	/* Location of Occurrence of Type M Path Table */
	FUNC9(bp+149, vdd->location_type_M_path_table);
	/* Location of Optional Occurrence of Type M Path Table */
	FUNC9(bp+153, 0);
	/* Directory Record for Root Directory(BP 157 to 190) */
	FUNC5(bp+157, 190-157+1, vdd->rootent,
	    iso9660, DIR_REC_VD, vdd->vdd_type);
	/* Volume Set Identifier */
	r = FUNC12(a, bp, 191, 318, "", vdc);
	if (r != ARCHIVE_OK)
		return (r);
	/* Publisher Identifier */
	r = FUNC6(bp, 319, 446, vdc, a, vdd,
	    &(iso9660->publisher_identifier),
	    "Publisher File", 1, A_CHAR);
	if (r != ARCHIVE_OK)
		return (r);
	/* Data Preparer Identifier */
	r = FUNC6(bp, 447, 574, vdc, a, vdd,
	    &(iso9660->data_preparer_identifier),
	    "Data Preparer File", 1, A_CHAR);
	if (r != ARCHIVE_OK)
		return (r);
	/* Application Identifier */
	r = FUNC6(bp, 575, 702, vdc, a, vdd,
	    &(iso9660->application_identifier),
	    "Application File", 1, A_CHAR);
	if (r != ARCHIVE_OK)
		return (r);
	/* Copyright File Identifier */
	r = FUNC6(bp, 703, 739, vdc, a, vdd,
	    &(iso9660->copyright_file_identifier),
	    "Copyright File", 0, D_CHAR);
	if (r != ARCHIVE_OK)
		return (r);
	/* Abstract File Identifier */
	r = FUNC6(bp, 740, 776, vdc, a, vdd,
	    &(iso9660->abstract_file_identifier),
	    "Abstract File", 0, D_CHAR);
	if (r != ARCHIVE_OK)
		return (r);
	/* Bibliographic File Identifier */
	r = FUNC6(bp, 777, 813, vdc, a, vdd,
	    &(iso9660->bibliographic_file_identifier),
	    "Bibliongraphic File", 0, D_CHAR);
	if (r != ARCHIVE_OK)
		return (r);
	/* Volume Creation Date and Time */
	FUNC3(bp+814, iso9660->birth_time);
	/* Volume Modification Date and Time */
	FUNC3(bp+831, iso9660->birth_time);
	/* Volume Expiration Date and Time(obsolete) */
	FUNC4(bp+848);
	/* Volume Effective Date and Time */
	FUNC3(bp+865, iso9660->birth_time);
	/* File Structure Version */
	bp[882] = fst_ver;
	/* Reserved */
	bp[883] = 0;
	/* Application Use */
	FUNC1(bp + 884, 0x20, 1395 - 884 + 1);
	/* Reserved */
	FUNC13(bp, 1396, LOGICAL_BLOCK_SIZE);

	return (FUNC15(a, LOGICAL_BLOCK_SIZE));
}