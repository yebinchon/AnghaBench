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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ u_int ;
struct scsi_sense_sks {int* sense_key_spec; } ;
struct scsi_sense_data_fixed {int* sense_key_spec; } ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
typedef  int scsi_sense_data_type ;

/* Variables and functions */
 int /*<<< orphan*/  SSD_DESC_SKS ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_sense_data_fixed*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_sense_data_fixed*,scalar_t__,int /*<<< orphan*/ ) ; 
 int SSD_SCS_VALID ; 
 int SSD_SKS_VALID ; 
#define  SSD_TYPE_DESC 129 
#define  SSD_TYPE_FIXED 128 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct scsi_sense_data_desc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct scsi_sense_data*) ; 
 int /*<<< orphan*/  sense_key_spec ; 

int
FUNC5(struct scsi_sense_data *sense_data, u_int sense_len, uint8_t *sks)
{
	scsi_sense_data_type sense_type;

	if (sense_len == 0)
		goto bailout;

	sense_type = FUNC4(sense_data);

	switch (sense_type) {
	case SSD_TYPE_DESC: {
		struct scsi_sense_data_desc *sense;
		struct scsi_sense_sks *desc;

		sense = (struct scsi_sense_data_desc *)sense_data;

		desc = (struct scsi_sense_sks *)FUNC3(sense, sense_len,
							       SSD_DESC_SKS);
		if (desc == NULL)
			goto bailout;

		if ((desc->sense_key_spec[0] & SSD_SKS_VALID) == 0)
			goto bailout;

		FUNC2(desc->sense_key_spec, sks, sizeof(desc->sense_key_spec));
		break;
	}
	case SSD_TYPE_FIXED: {
		struct scsi_sense_data_fixed *sense;

		sense = (struct scsi_sense_data_fixed *)sense_data;

		if ((FUNC1(sense, sense_len, sense_key_spec)== 0)
		 || (FUNC0(sense, sense_key_spec) == 0))
			goto bailout;

		if ((sense->sense_key_spec[0] & SSD_SCS_VALID) == 0)
			goto bailout;

		FUNC2(sense->sense_key_spec, sks,sizeof(sense->sense_key_spec));
		break;
	}
	default:
		goto bailout;
		break;
	}
	return (0);
bailout:
	return (1);
}