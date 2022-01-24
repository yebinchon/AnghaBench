#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_vpd_id_descriptor {int length; } ;
struct scsi_token {int* length; int /*<<< orphan*/ * body; int /*<<< orphan*/  type; } ;
struct scsi_read_capacity_data_long {int prot_lbppbe; int* lalba_lbp; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {int /*<<< orphan*/  block_length; } ;
struct scsi_ec_cscd_id {TYPE_2__ dtsp; int /*<<< orphan*/  codeset; int /*<<< orphan*/  luidt_pdt; int /*<<< orphan*/  type_code; } ;
struct ctl_port {TYPE_4__* target_devid; } ;
struct ctl_lun {TYPE_3__* be_lun; TYPE_1__* lun_devid; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_8__ {int len; struct scsi_vpd_id_descriptor* data; } ;
struct TYPE_7__ {int pblockexp; int pblockoff; int flags; int /*<<< orphan*/  blocksize; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; scalar_t__ data; } ;

/* Variables and functions */
 int CTL_LUN_FLAG_UNMAP ; 
 int /*<<< orphan*/  EC_CSCD_ID ; 
 int /*<<< orphan*/  ROD_TYPE_AUR ; 
 int SRC16_LALBA_A ; 
 int SRC16_LBPME ; 
 int SRC16_LBPPBE ; 
 int SRC16_LBPRZ ; 
 int /*<<< orphan*/  T_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct scsi_vpd_id_descriptor*,int) ; 
 int /*<<< orphan*/  scsi_devid_is_lun_eui64 ; 
 int /*<<< orphan*/  scsi_devid_is_lun_naa ; 
 struct scsi_vpd_id_descriptor* FUNC3 (struct scsi_vpd_id_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct ctl_lun *lun, struct ctl_port *port, off_t len,
    struct scsi_token *token)
{
	static int id = 0;
	struct scsi_vpd_id_descriptor *idd = NULL;
	struct scsi_ec_cscd_id *cscd;
	struct scsi_read_capacity_data_long *dtsd;
	int targid_len;

	FUNC7(ROD_TYPE_AUR, token->type);
	FUNC5(0x01f8, token->length);
	FUNC4(FUNC1(&id, 1), &token->body[0]);
	if (lun->lun_devid)
		idd = FUNC3((struct scsi_vpd_id_descriptor *)
		    lun->lun_devid->data, lun->lun_devid->len,
		    scsi_devid_is_lun_naa);
	if (idd == NULL && lun->lun_devid)
		idd = FUNC3((struct scsi_vpd_id_descriptor *)
		    lun->lun_devid->data, lun->lun_devid->len,
		    scsi_devid_is_lun_eui64);
	if (idd != NULL) {
		cscd = (struct scsi_ec_cscd_id *)&token->body[8];
		cscd->type_code = EC_CSCD_ID;
		cscd->luidt_pdt = T_DIRECT;
		FUNC2(&cscd->codeset, idd, 4 + idd->length);
		FUNC6(lun->be_lun->blocksize, cscd->dtsp.block_length);
	}
	FUNC4(0, &token->body[40]); /* XXX: Should be 128bit value. */
	FUNC4(len, &token->body[48]);

	/* ROD token device type specific data (RC16 without first field) */
	dtsd = (struct scsi_read_capacity_data_long *)&token->body[88 - 8];
	FUNC7(lun->be_lun->blocksize, dtsd->length);
	dtsd->prot_lbppbe = lun->be_lun->pblockexp & SRC16_LBPPBE;
	FUNC5(lun->be_lun->pblockoff & SRC16_LALBA_A, dtsd->lalba_lbp);
	if (lun->be_lun->flags & CTL_LUN_FLAG_UNMAP)
		dtsd->lalba_lbp[0] |= SRC16_LBPME | SRC16_LBPRZ;

	if (port->target_devid) {
		targid_len = port->target_devid->len;
		FUNC2(&token->body[120], port->target_devid->data, targid_len);
	} else
		targid_len = 32;
	FUNC0(&token->body[120 + targid_len], 384 - targid_len, 0);
}