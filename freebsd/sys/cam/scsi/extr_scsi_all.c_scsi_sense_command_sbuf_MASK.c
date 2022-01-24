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
typedef  int /*<<< orphan*/  u_int ;
struct scsi_sense_desc_header {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_sense_command {int /*<<< orphan*/  command_info; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,int /*<<< orphan*/ *,int,struct scsi_inquiry_data*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct sbuf *sb, struct scsi_sense_data *sense,
			u_int sense_len, uint8_t *cdb, int cdb_len,
			struct scsi_inquiry_data *inq_data,
			struct scsi_sense_desc_header *header)
{
	struct scsi_sense_command *command;

	command = (struct scsi_sense_command *)header;

	FUNC1(sb, cdb, cdb_len, inq_data,
			  FUNC0(command->command_info));
}