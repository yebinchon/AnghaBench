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
typedef  scalar_t__ u_int ;
struct scsi_sense_data_fixed {int flags; int add_sense_code; int add_sense_code_qual; } ;
struct scsi_sense_data_desc {int sense_key; int add_sense_code; int add_sense_code_qual; } ;
struct scsi_sense_data {int error_code; } ;

/* Variables and functions */
#define  SSD_CURRENT_ERROR 131 
#define  SSD_DEFERRED_ERROR 130 
#define  SSD_DESC_CURRENT_ERROR 129 
#define  SSD_DESC_DEFERRED_ERROR 128 
 int /*<<< orphan*/  FUNC0 (struct scsi_sense_data_desc*,scalar_t__,int*) ; 
 int SSD_ERRCODE ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_sense_data_fixed*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_sense_data_fixed*,scalar_t__,int*) ; 
 int SSD_KEY ; 
 int* add_sense_code ; 
 int* add_sense_code_qual ; 
 int* flags ; 

void
FUNC3(struct scsi_sense_data *sense_data, u_int sense_len,
		       int *error_code, int *sense_key, int *asc, int *ascq,
		       int show_errors)
{
	/*
	 * If we have no length, we have no sense.
	 */
	if (sense_len == 0) {
		if (show_errors == 0) {
			*error_code = 0;
			*sense_key = 0;
			*asc = 0;
			*ascq = 0;
		} else {
			*error_code = -1;
			*sense_key = -1;
			*asc = -1;
			*ascq = -1;
		}
		return;
	}

	*error_code = sense_data->error_code & SSD_ERRCODE;

	switch (*error_code) {
	case SSD_DESC_CURRENT_ERROR:
	case SSD_DESC_DEFERRED_ERROR: {
		struct scsi_sense_data_desc *sense;

		sense = (struct scsi_sense_data_desc *)sense_data;

		if (FUNC0(sense, sense_len, sense_key))
			*sense_key = sense->sense_key & SSD_KEY;
		else
			*sense_key = (show_errors) ? -1 : 0;

		if (FUNC0(sense, sense_len, add_sense_code))
			*asc = sense->add_sense_code;
		else
			*asc = (show_errors) ? -1 : 0;

		if (FUNC0(sense, sense_len, add_sense_code_qual))
			*ascq = sense->add_sense_code_qual;
		else
			*ascq = (show_errors) ? -1 : 0;
		break;
	}
	case SSD_CURRENT_ERROR:
	case SSD_DEFERRED_ERROR:
	default: {
		struct scsi_sense_data_fixed *sense;

		sense = (struct scsi_sense_data_fixed *)sense_data;

		if (FUNC2(sense, sense_len, flags))
			*sense_key = sense->flags & SSD_KEY;
		else
			*sense_key = (show_errors) ? -1 : 0;

		if ((FUNC2(sense, sense_len, add_sense_code))
		 && (FUNC1(sense, add_sense_code)))
			*asc = sense->add_sense_code;
		else
			*asc = (show_errors) ? -1 : 0;

		if ((FUNC2(sense, sense_len,add_sense_code_qual))
		 && (FUNC1(sense, add_sense_code_qual)))
			*ascq = sense->add_sense_code_qual;
		else
			*ascq = (show_errors) ? -1 : 0;
		break;
	}
	}
}