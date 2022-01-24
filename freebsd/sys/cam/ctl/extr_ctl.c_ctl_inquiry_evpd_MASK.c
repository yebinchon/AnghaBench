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
typedef  union ctl_io {int dummy; } ctl_io ;
struct scsi_inquiry {int page_code; int /*<<< orphan*/  length; } ;
struct ctl_scsiio {scalar_t__ cdb; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_2__ {int /*<<< orphan*/  lun_type; } ;

/* Variables and functions */
 struct ctl_lun* FUNC0 (struct ctl_scsiio*) ; 
 int CTL_RETVAL_COMPLETE ; 
#define  SVPD_BDC 138 
#define  SVPD_BLOCK_LIMITS 137 
#define  SVPD_DEVICE_ID 136 
#define  SVPD_EXTENDED_INQUIRY_DATA 135 
#define  SVPD_LBP 134 
#define  SVPD_MODE_PAGE_POLICY 133 
#define  SVPD_SCSI_PORTS 132 
#define  SVPD_SCSI_SFS 131 
#define  SVPD_SCSI_TPC 130 
#define  SVPD_SUPPORTED_PAGES 129 
#define  SVPD_UNIT_SERIAL_NUMBER 128 
 int /*<<< orphan*/  T_DIRECT ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int FUNC2 (struct ctl_scsiio*,int) ; 
 int FUNC3 (struct ctl_scsiio*,int) ; 
 int FUNC4 (struct ctl_scsiio*,int) ; 
 int FUNC5 (struct ctl_scsiio*,int) ; 
 int FUNC6 (struct ctl_scsiio*,int) ; 
 int FUNC7 (struct ctl_scsiio*,int) ; 
 int FUNC8 (struct ctl_scsiio*,int) ; 
 int FUNC9 (struct ctl_scsiio*,int) ; 
 int FUNC10 (struct ctl_scsiio*,int) ; 
 int FUNC11 (struct ctl_scsiio*,int) ; 
 int FUNC12 (struct ctl_scsiio*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ctl_scsiio*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC0(ctsio);
	struct scsi_inquiry *cdb;
	int alloc_len, retval;

	cdb = (struct scsi_inquiry *)ctsio->cdb;
	alloc_len = FUNC14(cdb->length);

	switch (cdb->page_code) {
	case SVPD_SUPPORTED_PAGES:
		retval = FUNC11(ctsio, alloc_len);
		break;
	case SVPD_UNIT_SERIAL_NUMBER:
		retval = FUNC9(ctsio, alloc_len);
		break;
	case SVPD_DEVICE_ID:
		retval = FUNC4(ctsio, alloc_len);
		break;
	case SVPD_EXTENDED_INQUIRY_DATA:
		retval = FUNC5(ctsio, alloc_len);
		break;
	case SVPD_MODE_PAGE_POLICY:
		retval = FUNC7(ctsio, alloc_len);
		break;
	case SVPD_SCSI_PORTS:
		retval = FUNC8(ctsio, alloc_len);
		break;
	case SVPD_SCSI_TPC:
		retval = FUNC12(ctsio, alloc_len);
		break;
	case SVPD_SCSI_SFS:
		retval = FUNC10(ctsio, alloc_len);
		break;
	case SVPD_BLOCK_LIMITS:
		if (lun == NULL || lun->be_lun->lun_type != T_DIRECT)
			goto err;
		retval = FUNC3(ctsio, alloc_len);
		break;
	case SVPD_BDC:
		if (lun == NULL || lun->be_lun->lun_type != T_DIRECT)
			goto err;
		retval = FUNC2(ctsio, alloc_len);
		break;
	case SVPD_LBP:
		if (lun == NULL || lun->be_lun->lun_type != T_DIRECT)
			goto err;
		retval = FUNC6(ctsio, alloc_len);
		break;
	default:
err:
		FUNC13(ctsio,
				      /*sks_valid*/ 1,
				      /*command*/ 1,
				      /*field*/ 2,
				      /*bit_valid*/ 0,
				      /*bit*/ 0);
		FUNC1((union ctl_io *)ctsio);
		retval = CTL_RETVAL_COMPLETE;
		break;
	}

	return (retval);
}