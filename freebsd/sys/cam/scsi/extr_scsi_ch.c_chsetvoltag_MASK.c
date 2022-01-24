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
union ccb {int /*<<< orphan*/  csio; } ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int16_t ;
struct scsi_send_volume_tag_parameters {char* vitf; int /*<<< orphan*/  minvsn; } ;
struct TYPE_2__ {int /*<<< orphan*/  cv_serial; int /*<<< orphan*/  cv_volid; } ;
struct changer_set_voltag_request {size_t csvr_type; int csvr_addr; int csvr_flags; TYPE_1__ csvr_voltag; } ;
struct ch_softc {int* sc_counts; int* sc_firsts; int /*<<< orphan*/  device_stats; } ;
struct cam_periph {scalar_t__ softc; } ;
typedef  int /*<<< orphan*/  ssvtp ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  CAM_RETRY_SELTO ; 
 size_t CHET_DT ; 
 int /*<<< orphan*/  CH_TIMEOUT_SEND_VOLTAG ; 
 int CSVR_ALTERNATE ; 
#define  CSVR_MODE_CLEAR 130 
 int CSVR_MODE_MASK ; 
#define  CSVR_MODE_REPLACE 129 
#define  CSVR_MODE_SET 128 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  SEND_VOLUME_TAG_ASSERT_ALTERNATE ; 
 int /*<<< orphan*/  SEND_VOLUME_TAG_ASSERT_PRIMARY ; 
 int /*<<< orphan*/  SEND_VOLUME_TAG_REPLACE_ALTERNATE ; 
 int /*<<< orphan*/  SEND_VOLUME_TAG_REPLACE_PRIMARY ; 
 int /*<<< orphan*/  SEND_VOLUME_TAG_UNDEFINED_ALTERNATE ; 
 int /*<<< orphan*/  SEND_VOLUME_TAG_UNDEFINED_PRIMARY ; 
 int /*<<< orphan*/  SF_RETRY_UA ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_send_volume_tag_parameters*,int) ; 
 union ccb* FUNC1 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int FUNC2 (union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chdone ; 
 int /*<<< orphan*/  cherror ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct scsi_send_volume_tag_parameters*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 

__attribute__((used)) static int
FUNC9(struct cam_periph *periph,
	    struct changer_set_voltag_request *csvr)
{
	union ccb *ccb;
	struct ch_softc *softc;
	u_int16_t ea;
	u_int8_t sac;
	struct scsi_send_volume_tag_parameters ssvtp;
	int error;
	int i;

	error = 0;
	softc = (struct ch_softc *)periph->softc;

	FUNC0(&ssvtp, sizeof(ssvtp));
	for (i=0; i<sizeof(ssvtp.vitf); i++) {
		ssvtp.vitf[i] = ' ';
	}

	/*
	 * Check arguments.
	 */
	if (csvr->csvr_type > CHET_DT)
		return EINVAL;
	if (csvr->csvr_addr > (softc->sc_counts[csvr->csvr_type] - 1))
		return ENODEV;

	ea = softc->sc_firsts[csvr->csvr_type] + csvr->csvr_addr;

	if (csvr->csvr_flags & CSVR_ALTERNATE) {
		switch (csvr->csvr_flags & CSVR_MODE_MASK) {
		case CSVR_MODE_SET:
			sac = SEND_VOLUME_TAG_ASSERT_ALTERNATE;
			break;
		case CSVR_MODE_REPLACE:
			sac = SEND_VOLUME_TAG_REPLACE_ALTERNATE;
			break;
		case CSVR_MODE_CLEAR:
			sac = SEND_VOLUME_TAG_UNDEFINED_ALTERNATE;
			break;
		default:
			error = EINVAL;
			goto out;
		}
	} else {
		switch (csvr->csvr_flags & CSVR_MODE_MASK) {
		case CSVR_MODE_SET:
			sac = SEND_VOLUME_TAG_ASSERT_PRIMARY;
			break;
		case CSVR_MODE_REPLACE:
			sac = SEND_VOLUME_TAG_REPLACE_PRIMARY;
			break;
		case CSVR_MODE_CLEAR:
			sac = SEND_VOLUME_TAG_UNDEFINED_PRIMARY;
			break;
		default:
			error = EINVAL;
			goto out;
		}
	}

	FUNC3(ssvtp.vitf, csvr->csvr_voltag.cv_volid,
	       FUNC4(FUNC7(csvr->csvr_voltag.cv_volid), sizeof(ssvtp.vitf)));
	FUNC6(csvr->csvr_voltag.cv_serial, ssvtp.minvsn);

	ccb = FUNC1(periph, CAM_PRIORITY_NORMAL);

	FUNC5(&ccb->csio,
			     /* retries */ 1,
			     /* cbfcnp */ chdone,
			     /* tag_action */ MSG_SIMPLE_Q_TAG,
			     /* element_address */ ea,
			     /* send_action_code */ sac,
			     /* parameters */ &ssvtp,
			     /* sense_len */ SSD_FULL_SIZE,
			     /* timeout */ CH_TIMEOUT_SEND_VOLTAG);
	
	error = FUNC2(ccb, cherror, /*cam_flags*/ CAM_RETRY_SELTO,
				  /*sense_flags*/ SF_RETRY_UA,
				  softc->device_stats);

	FUNC8(ccb);

 out:
	return error;
}