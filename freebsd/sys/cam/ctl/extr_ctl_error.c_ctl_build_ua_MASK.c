#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct scsi_sense_data {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ main; } ;
struct ctl_lun {int** pending_ua; TYPE_2__ MODE_LBP; int /*<<< orphan*/  lun_lock; TYPE_3__* ctl_softc; } ;
typedef  int /*<<< orphan*/  scsi_sense_data_type ;
typedef  int ctl_ua_type ;
struct TYPE_6__ {int /*<<< orphan*/  ctl_lock; } ;

/* Variables and functions */
 size_t CTL_MAX_INIT_PER_PORT ; 
 int CTL_UA_LUN_CHANGE ; 
 int CTL_UA_NONE ; 
 int CTL_UA_POWERON ; 
 int CTL_UA_THIN_PROV_THRES ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_CTL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SLBPP_SITUA ; 
 int /*<<< orphan*/  SSD_ELEM_INFO ; 
 int /*<<< orphan*/  SSD_ELEM_NONE ; 
 int /*<<< orphan*/  SSD_ELEM_SKIP ; 
 int /*<<< orphan*/  SSD_KEY_UNIT_ATTENTION ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_lun*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_sense_data*,int /*<<< orphan*/ *,struct ctl_lun*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_lun*,int,int*,int*,int*,int /*<<< orphan*/ **) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

ctl_ua_type
FUNC10(struct ctl_lun *lun, uint32_t initidx,
    struct scsi_sense_data *sense, u_int *sense_len,
    scsi_sense_data_type sense_format)
{
	ctl_ua_type *ua;
	ctl_ua_type ua_to_build, ua_to_clear;
	uint8_t *info;
	int asc, ascq;
	uint32_t p, i;

	FUNC7(&lun->lun_lock, MA_OWNED);
	FUNC7(&lun->ctl_softc->ctl_lock, MA_NOTOWNED);
	p = initidx / CTL_MAX_INIT_PER_PORT;
	if ((ua = lun->pending_ua[p]) == NULL) {
		FUNC9(&lun->lun_lock);
		ua = FUNC6(sizeof(ctl_ua_type) * CTL_MAX_INIT_PER_PORT,
		    M_CTL, M_WAITOK);
		FUNC8(&lun->lun_lock);
		if (lun->pending_ua[p] == NULL) {
			lun->pending_ua[p] = ua;
			for (i = 0; i < CTL_MAX_INIT_PER_PORT; i++)
				ua[i] = CTL_UA_POWERON;
		} else {
			FUNC5(ua, M_CTL);
			ua = lun->pending_ua[p];
		}
	}
	i = initidx % CTL_MAX_INIT_PER_PORT;
	if (ua[i] == CTL_UA_NONE)
		return (CTL_UA_NONE);

	ua_to_build = (1 << (FUNC4(ua[i]) - 1));
	ua_to_clear = ua_to_build;
	info = NULL;
	FUNC3(lun, ua_to_build, &asc, &ascq, &ua_to_clear, &info);

	FUNC2(sense, sense_len, lun, sense_format, 1,
	    /*sense_key*/ SSD_KEY_UNIT_ATTENTION, asc, ascq,
	    ((info != NULL) ? SSD_ELEM_INFO : SSD_ELEM_SKIP), 8, info,
	    SSD_ELEM_NONE);

	/* We're reporting this UA, so clear it */
	ua[i] &= ~ua_to_clear;

	if (ua_to_build == CTL_UA_LUN_CHANGE) {
		FUNC9(&lun->lun_lock);
		FUNC8(&lun->ctl_softc->ctl_lock);
		FUNC1(lun->ctl_softc, initidx, ua_to_build);
		FUNC9(&lun->ctl_softc->ctl_lock);
		FUNC8(&lun->lun_lock);
	} else if (ua_to_build == CTL_UA_THIN_PROV_THRES &&
	    (lun->MODE_LBP.main.flags & SLBPP_SITUA) != 0) {
		FUNC0(lun, -1, ua_to_build);
	}

	return (ua_to_build);
}