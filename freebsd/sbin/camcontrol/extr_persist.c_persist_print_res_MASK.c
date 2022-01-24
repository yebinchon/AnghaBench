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
typedef  int uintmax_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  extent_length; int /*<<< orphan*/  scopetype; int /*<<< orphan*/  scope_addr; int /*<<< orphan*/  reservation; } ;
struct TYPE_3__ {int /*<<< orphan*/  generation; } ;
struct scsi_per_res_in_rsrv {TYPE_2__ data; TYPE_1__ header; } ;
struct scsi_per_res_in_header {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7(struct scsi_per_res_in_header *hdr, uint32_t valid_len)
{
	uint32_t length;
	struct scsi_per_res_in_rsrv *res;

	length = FUNC4(hdr->length);
	length = FUNC0(length, valid_len);

	res = (struct scsi_per_res_in_rsrv *)hdr;

	if (length < sizeof(res->data) - sizeof(res->data.extent_length)) {
		if (length == 0)
			FUNC1(stdout, "No reservations.\n");
		else
			FUNC6("unable to print reservation, only got %u "
			      "valid bytes", length);
		return;
	}
	FUNC1(stdout, "PRgeneration: %#x\n",
		FUNC4(res->header.generation));
	FUNC1(stdout, "Reservation Key: %jd\n",
		(uintmax_t)FUNC5(res->data.reservation));
	FUNC1(stdout, "Scope address: %#x\n",
		FUNC4(res->data.scope_addr));

	FUNC2(res->data.scopetype);

	FUNC1(stdout, "Extent length: %u\n",
		FUNC3(res->data.extent_length));
}