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
typedef  int uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct scsi_per_res_in_header {int /*<<< orphan*/  generation; int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct scsi_per_res_in_full_desc {int flags; int /*<<< orphan*/  transport_id; int /*<<< orphan*/  additional_length; int /*<<< orphan*/  rel_trgt_port_id; int /*<<< orphan*/  scopetype; TYPE_1__ res_key; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int SPRI_FULL_ALL_TG_PT ; 
 int SPRI_FULL_R_HOLDER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void
FUNC8(struct scsi_per_res_in_header *hdr, uint32_t valid_len)
{
	uint32_t length, len_to_go = 0;
	struct scsi_per_res_in_full_desc *desc;
	uint8_t *cur_pos;
	int i;

	length = FUNC5(hdr->length);
	length = FUNC0(length, valid_len);

	if (length < sizeof(*desc)) {
		if (length == 0)
			FUNC1(stdout, "No reservations.\n");
		else
			FUNC7("unable to print reservation, only got %u "
			      "valid bytes", length);
		return;
	}

	FUNC1(stdout, "PRgeneration: %#x\n", FUNC5(hdr->generation));
	cur_pos = (uint8_t *)&hdr[1];
	for (len_to_go = length, i = 0,
	     desc = (struct scsi_per_res_in_full_desc *)cur_pos;
	     len_to_go >= sizeof(*desc);
	     desc = (struct scsi_per_res_in_full_desc *)cur_pos, i++) {
		uint32_t additional_length, cur_length;


		FUNC1(stdout, "Reservation Key: %jd\n",
			(uintmax_t)FUNC6(desc->res_key.key));
		FUNC1(stdout, "All Target Ports (ALL_TG_PT): %d\n",
			(desc->flags & SPRI_FULL_ALL_TG_PT) ? 1 : 0);
		FUNC1(stdout, "Reservation Holder (R_HOLDER): %d\n",
			(desc->flags & SPRI_FULL_R_HOLDER) ? 1 : 0);
		
		if (desc->flags & SPRI_FULL_R_HOLDER)
			FUNC2(desc->scopetype);

		if ((desc->flags & SPRI_FULL_ALL_TG_PT) == 0)
			FUNC1(stdout, "Relative Target Port ID: %#x\n",
				FUNC4(desc->rel_trgt_port_id));

		additional_length = FUNC5(desc->additional_length);

		FUNC3(desc->transport_id,
					  additional_length);

		cur_length = sizeof(*desc) + additional_length;
		len_to_go -= cur_length;
		cur_pos += cur_length;
	}
}