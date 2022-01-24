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
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  int uint32_t ;
struct scsi_report_luns_lundata {int dummy; } ;
struct scsi_report_luns_data {int /*<<< orphan*/  length; TYPE_1__* luns; } ;
struct scsi_report_luns {int select_report; int /*<<< orphan*/  length; } ;
struct ctl_softc {int /*<<< orphan*/  ctl_lock; struct ctl_lun** ctl_luns; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  nexus; } ;
struct ctl_scsiio {int /*<<< orphan*/  be_move_done; TYPE_2__ io_hdr; int /*<<< orphan*/  kern_data_len; int /*<<< orphan*/  kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; scalar_t__ cdb; } ;
struct ctl_port {int lun_map_size; scalar_t__ lun_map; } ;
struct ctl_lun {int /*<<< orphan*/  lun_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  lundata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 struct ctl_lun* FUNC1 (struct ctl_scsiio*) ; 
 struct ctl_port* FUNC2 (struct ctl_scsiio*) ; 
 int CTL_RETVAL_COMPLETE ; 
 struct ctl_softc* FUNC3 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  CTL_UA_LUN_CHANGE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
#define  RPL_REPORT_ADMIN 133 
#define  RPL_REPORT_ALL 132 
#define  RPL_REPORT_CONGLOM 131 
#define  RPL_REPORT_DEFAULT 130 
#define  RPL_REPORT_NONSUBSID 129 
#define  RPL_REPORT_WELLKNOWN 128 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_lun*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC6 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC7 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct ctl_port*,int) ; 
 int ctl_max_luns ; 
 int /*<<< orphan*/  FUNC11 (struct ctl_scsiio*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ctl_scsiio*) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 

int
FUNC19(struct ctl_scsiio *ctsio)
{
	struct ctl_softc *softc = FUNC3(ctsio);
	struct ctl_port *port = FUNC2(ctsio);
	struct ctl_lun *lun, *request_lun = FUNC1(ctsio);
	struct scsi_report_luns *cdb;
	struct scsi_report_luns_data *lun_data;
	int num_filled, num_luns, num_port_luns, retval;
	uint32_t alloc_len, lun_datalen;
	uint32_t initidx, targ_lun_id, lun_id;

	retval = CTL_RETVAL_COMPLETE;
	cdb = (struct scsi_report_luns *)ctsio->cdb;

	FUNC0(("ctl_report_luns\n"));

	num_luns = 0;
	num_port_luns = port->lun_map ? port->lun_map_size : ctl_max_luns;
	FUNC15(&softc->ctl_lock);
	for (targ_lun_id = 0; targ_lun_id < num_port_luns; targ_lun_id++) {
		if (FUNC10(port, targ_lun_id) != UINT32_MAX)
			num_luns++;
	}
	FUNC16(&softc->ctl_lock);

	switch (cdb->select_report) {
	case RPL_REPORT_DEFAULT:
	case RPL_REPORT_ALL:
	case RPL_REPORT_NONSUBSID:
		break;
	case RPL_REPORT_WELLKNOWN:
	case RPL_REPORT_ADMIN:
	case RPL_REPORT_CONGLOM:
		num_luns = 0;
		break;
	default:
		FUNC11(ctsio,
				      /*sks_valid*/ 1,
				      /*command*/ 1,
				      /*field*/ 2,
				      /*bit_valid*/ 0,
				      /*bit*/ 0);
		FUNC7((union ctl_io *)ctsio);
		return (retval);
		break; /* NOTREACHED */
	}

	alloc_len = FUNC17(cdb->length);
	/*
	 * The initiator has to allocate at least 16 bytes for this request,
	 * so he can at least get the header and the first LUN.  Otherwise
	 * we reject the request (per SPC-3 rev 14, section 6.21).
	 */
	if (alloc_len < (sizeof(struct scsi_report_luns_data) +
	    sizeof(struct scsi_report_luns_lundata))) {
		FUNC11(ctsio,
				      /*sks_valid*/ 1,
				      /*command*/ 1,
				      /*field*/ 6,
				      /*bit_valid*/ 0,
				      /*bit*/ 0);
		FUNC7((union ctl_io *)ctsio);
		return (retval);
	}

	lun_datalen = sizeof(*lun_data) +
		(num_luns * sizeof(struct scsi_report_luns_lundata));

	ctsio->kern_data_ptr = FUNC13(lun_datalen, M_CTL, M_WAITOK | M_ZERO);
	lun_data = (struct scsi_report_luns_data *)ctsio->kern_data_ptr;
	ctsio->kern_sg_entries = 0;

	initidx = FUNC9(&ctsio->io_hdr.nexus);

	FUNC15(&softc->ctl_lock);
	for (targ_lun_id = 0, num_filled = 0;
	    targ_lun_id < num_port_luns && num_filled < num_luns;
	    targ_lun_id++) {
		lun_id = FUNC10(port, targ_lun_id);
		if (lun_id == UINT32_MAX)
			continue;
		lun = softc->ctl_luns[lun_id];
		if (lun == NULL)
			continue;

		FUNC4(lun_data->luns[num_filled++].lundata,
		    FUNC8(targ_lun_id));

		/*
		 * According to SPC-3, rev 14 section 6.21:
		 *
		 * "The execution of a REPORT LUNS command to any valid and
		 * installed logical unit shall clear the REPORTED LUNS DATA
		 * HAS CHANGED unit attention condition for all logical
		 * units of that target with respect to the requesting
		 * initiator. A valid and installed logical unit is one
		 * having a PERIPHERAL QUALIFIER of 000b in the standard
		 * INQUIRY data (see 6.4.2)."
		 *
		 * If request_lun is NULL, the LUN this report luns command
		 * was issued to is either disabled or doesn't exist. In that
		 * case, we shouldn't clear any pending lun change unit
		 * attention.
		 */
		if (request_lun != NULL) {
			FUNC15(&lun->lun_lock);
			FUNC5(lun, initidx, CTL_UA_LUN_CHANGE);
			FUNC16(&lun->lun_lock);
		}
	}
	FUNC16(&softc->ctl_lock);

	/*
	 * It's quite possible that we've returned fewer LUNs than we allocated
	 * space for.  Trim it.
	 */
	lun_datalen = sizeof(*lun_data) +
		(num_filled * sizeof(struct scsi_report_luns_lundata));
	ctsio->kern_rel_offset = 0;
	ctsio->kern_sg_entries = 0;
	ctsio->kern_data_len = FUNC14(lun_datalen, alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	/*
	 * We set this to the actual data length, regardless of how much
	 * space we actually have to return results.  If the user looks at
	 * this value, he'll know whether or not he allocated enough space
	 * and reissue the command if necessary.  We don't support well
	 * known logical units, so if the user asks for that, return none.
	 */
	FUNC18(lun_datalen - 8, lun_data->length);

	/*
	 * We can only return SCSI_STATUS_CHECK_COND when we can't satisfy
	 * this request.
	 */
	FUNC12(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC6((union ctl_io *)ctsio);
	return (retval);
}