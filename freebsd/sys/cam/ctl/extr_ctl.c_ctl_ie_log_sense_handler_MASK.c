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
struct scsi_log_param_header {int dummy; } ;
struct TYPE_3__ {int param_len; int /*<<< orphan*/  param_control; int /*<<< orphan*/  param_code; } ;
struct scsi_log_informational_exceptions {int temperature; int /*<<< orphan*/  ie_ascq; int /*<<< orphan*/  ie_asc; TYPE_1__ hdr; } ;
struct ctl_scsiio {int dummy; } ;
struct ctl_page_index {scalar_t__ page_data; } ;
struct ctl_lun {TYPE_2__* be_lun; int /*<<< orphan*/  ie_ascq; int /*<<< orphan*/  ie_asc; } ;
struct TYPE_4__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 struct ctl_lun* FUNC0 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  SLP_IE_GEN ; 
 int /*<<< orphan*/  SLP_LBIN ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(struct ctl_scsiio *ctsio,
			       struct ctl_page_index *page_index,
			       int pc)
{
	struct ctl_lun *lun = FUNC0(ctsio);
	struct scsi_log_informational_exceptions *data;
	const char *value;

	data = (struct scsi_log_informational_exceptions *)page_index->page_data;

	FUNC2(SLP_IE_GEN, data->hdr.param_code);
	data->hdr.param_control = SLP_LBIN;
	data->hdr.param_len = sizeof(struct scsi_log_informational_exceptions) -
	    sizeof(struct scsi_log_param_header);
	data->ie_asc = lun->ie_asc;
	data->ie_ascq = lun->ie_ascq;
	if ((value = FUNC1(lun->be_lun->options, "temperature",
	    NULL)) != NULL)
		data->temperature = FUNC3(value, NULL, 0);
	else
		data->temperature = 0xff;
	return (0);
}