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
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
#define  ARCHIVE_FORMAT_7ZIP 139 
#define  ARCHIVE_FORMAT_AR 138 
 int ARCHIVE_FORMAT_BASE_MASK ; 
#define  ARCHIVE_FORMAT_CAB 137 
#define  ARCHIVE_FORMAT_CPIO 136 
#define  ARCHIVE_FORMAT_ISO9660 135 
#define  ARCHIVE_FORMAT_LHA 134 
#define  ARCHIVE_FORMAT_MTREE 133 
#define  ARCHIVE_FORMAT_RAR 132 
#define  ARCHIVE_FORMAT_RAR_V5 131 
#define  ARCHIVE_FORMAT_TAR 130 
#define  ARCHIVE_FORMAT_XAR 129 
#define  ARCHIVE_FORMAT_ZIP 128 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct archive*) ; 
 int FUNC2 (struct archive*) ; 
 int FUNC3 (struct archive*) ; 
 int FUNC4 (struct archive*) ; 
 int FUNC5 (struct archive*) ; 
 int FUNC6 (struct archive*) ; 
 int FUNC7 (struct archive*) ; 
 int FUNC8 (struct archive*) ; 
 int FUNC9 (struct archive*) ; 
 int FUNC10 (struct archive*) ; 
 int FUNC11 (struct archive*) ; 
 int FUNC12 (struct archive*) ; 

int
FUNC13(struct archive *a, int format_code)
{
	FUNC0(a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_format_by_code");

	switch (format_code & ARCHIVE_FORMAT_BASE_MASK) {
	case ARCHIVE_FORMAT_7ZIP:
		return FUNC1(a);
		break;
	case ARCHIVE_FORMAT_AR:
		return FUNC2(a);
		break;
	case ARCHIVE_FORMAT_CAB:
		return FUNC3(a);
		break;
	case ARCHIVE_FORMAT_CPIO:
		return FUNC4(a);
		break;
	case ARCHIVE_FORMAT_ISO9660:
		return FUNC5(a);
		break;
	case ARCHIVE_FORMAT_LHA:
		return FUNC6(a);
		break;
	case ARCHIVE_FORMAT_MTREE:
		return FUNC7(a);
		break;
	case ARCHIVE_FORMAT_RAR:
		return FUNC8(a);
		break;
	case ARCHIVE_FORMAT_RAR_V5:
		return FUNC9(a);
		break;
	case ARCHIVE_FORMAT_TAR:
		return FUNC10(a);
		break;
	case ARCHIVE_FORMAT_XAR:
		return FUNC11(a);
		break;
	case ARCHIVE_FORMAT_ZIP:
		return FUNC12(a);
		break;
	}
	return (ARCHIVE_FATAL);
}