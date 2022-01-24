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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct scsi_sense_data_fixed {int /*<<< orphan*/  info; } ;
struct scsi_sense_data_desc {int dummy; } ;
struct scsi_sense_data {int error_code; } ;
struct scsi_print_sense_info {char* path_str; int cdb_len; struct scsi_inquiry_data* inq_data; int /*<<< orphan*/ * cdb; struct sbuf* sb; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
#define  SSD_CURRENT_ERROR 131 
#define  SSD_DEFERRED_ERROR 130 
 int /*<<< orphan*/  SSD_DESC_COMMAND ; 
#define  SSD_DESC_CURRENT_ERROR 129 
#define  SSD_DESC_DEFERRED_ERROR 128 
 int /*<<< orphan*/  SSD_DESC_FRU ; 
 int /*<<< orphan*/  SSD_DESC_INFO ; 
 int SSD_ERRCODE_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_sense_data_fixed*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSD_TYPE_DESC ; 
 int /*<<< orphan*/  info ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,int /*<<< orphan*/ *,int,struct scsi_inquiry_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_sense_data_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_print_sense_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_sense_data*,int /*<<< orphan*/ ,int*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_sense_data*,int /*<<< orphan*/ ,struct scsi_inquiry_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_sense_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_sense_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_sense_data*,int /*<<< orphan*/ ,struct scsi_inquiry_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sbuf*,int /*<<< orphan*/ *,int,struct scsi_inquiry_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_print_desc_func ; 
 int /*<<< orphan*/  FUNC14 (int,int,int,struct scsi_inquiry_data*,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_sense_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct sbuf*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sbuf*,int /*<<< orphan*/ ) ; 

void
FUNC18(struct scsi_sense_data *sense, u_int sense_len,
		     struct sbuf *sb, char *path_str,
		     struct scsi_inquiry_data *inq_data, uint8_t *cdb,
		     int cdb_len)
{
	int error_code, sense_key, asc, ascq;

	FUNC1(sb, path_str);

	FUNC7(sense, sense_len, &error_code, &sense_key,
			       &asc, &ascq, /*show_errors*/ 1);

	FUNC2(sb, "SCSI sense: ");
	switch (error_code) {
	case SSD_DEFERRED_ERROR:
	case SSD_DESC_DEFERRED_ERROR:
		FUNC2(sb, "Deferred error: ");

		/* FALLTHROUGH */
	case SSD_CURRENT_ERROR:
	case SSD_DESC_CURRENT_ERROR:
	{
		struct scsi_sense_data_desc *desc_sense;
		struct scsi_print_sense_info print_info;
		const char *sense_key_desc;
		const char *asc_desc;
		uint8_t sks[3];
		uint64_t val;
		uint8_t bits;

		/*
		 * Get descriptions for the sense key, ASC, and ASCQ.  If
		 * these aren't present in the sense data (i.e. the sense
		 * data isn't long enough), the -1 values that
		 * scsi_extract_sense_len() returns will yield default
		 * or error descriptions.
		 */
		FUNC14(sense_key, asc, ascq, inq_data,
				&sense_key_desc, &asc_desc);

		/*
		 * We first print the sense key and ASC/ASCQ.
		 */
		FUNC1(sb, sense_key_desc);
		FUNC2(sb, " asc:%x,%x (%s)\n", asc, ascq, asc_desc);

		/*
		 * Print any block or stream device-specific information.
		 */
		if (FUNC9(sense, sense_len, inq_data,
		    &bits) == 0 && bits != 0) {
			FUNC1(sb, path_str);
			FUNC4(sb, bits);
			FUNC2(sb, "\n");
		} else if (FUNC12(sense, sense_len, inq_data,
		    &bits) == 0 && bits != 0) {
			FUNC1(sb, path_str);
			FUNC17(sb, bits);
			FUNC2(sb, "\n");
		}

		/*
		 * Print the info field.
		 */
		if (FUNC10(sense, sense_len, SSD_DESC_INFO,
					&val, NULL) == 0) {
			FUNC1(sb, path_str);
			FUNC13(sb, cdb, cdb_len, inq_data, val);
			FUNC2(sb, "\n");
		}

		/* 
		 * Print the FRU.
		 */
		if (FUNC10(sense, sense_len, SSD_DESC_FRU,
					&val, NULL) == 0) {
			FUNC1(sb, path_str);
			FUNC8(sb, val);
			FUNC2(sb, "\n");
		}

		/*
		 * Print any command-specific information.
		 */
		if (FUNC10(sense, sense_len, SSD_DESC_COMMAND,
					&val, NULL) == 0) {
			FUNC1(sb, path_str);
			FUNC5(sb, cdb, cdb_len, inq_data, val);
			FUNC2(sb, "\n");
		}

		/*
		 * Print out any sense-key-specific information.
		 */
		if (FUNC11(sense, sense_len, sks) == 0) {
			FUNC1(sb, path_str);
			FUNC16(sb, sense_key, sks);
			FUNC2(sb, "\n");
		}

		/*
		 * If this is fixed sense, we're done.  If we have
		 * descriptor sense, we might have more information
		 * available.
		 */
		if (FUNC15(sense) != SSD_TYPE_DESC)
			break;

		desc_sense = (struct scsi_sense_data_desc *)sense;

		print_info.sb = sb;
		print_info.path_str = path_str;
		print_info.cdb = cdb;
		print_info.cdb_len = cdb_len;
		print_info.inq_data = inq_data;

		/*
		 * Print any sense descriptors that we have not already printed.
		 */
		FUNC6(desc_sense, sense_len, scsi_print_desc_func,
				  &print_info);
		break;

	}
	case -1:
		/*
		 * scsi_extract_sense_len() sets values to -1 if the
		 * show_errors flag is set and they aren't present in the
		 * sense data.  This means that sense_len is 0.
		 */
		FUNC2(sb, "No sense data present\n");
		break;
	default: {
		FUNC2(sb, "Error code 0x%x", error_code);
		if (sense->error_code & SSD_ERRCODE_VALID) {
			struct scsi_sense_data_fixed *fixed_sense;

			fixed_sense = (struct scsi_sense_data_fixed *)sense;

			if (FUNC0(fixed_sense, sense_len, info)){
				uint32_t info;

				info = FUNC3(fixed_sense->info);

				FUNC2(sb, " at block no. %d (decimal)",
					    info);
			}
		}
		FUNC2(sb, "\n");
		break;
	}
	}
}