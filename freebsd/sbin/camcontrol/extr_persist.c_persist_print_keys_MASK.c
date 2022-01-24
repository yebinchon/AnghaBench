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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint32_t ;
struct scsi_per_res_key {int /*<<< orphan*/  key; } ;
struct scsi_per_res_in_header {int /*<<< orphan*/  generation; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4(struct scsi_per_res_in_header *hdr, uint32_t valid_len)
{
	uint32_t length, num_keys, i;
	struct scsi_per_res_key *key;

	length = FUNC2(hdr->length);
	length = FUNC0(length, valid_len);

	num_keys = length / sizeof(*key);

	FUNC1(stdout, "PRgeneration: %#x\n", FUNC2(hdr->generation));
	FUNC1(stdout, "%u key%s%s\n", num_keys, (num_keys == 1) ? "" : "s",
		(num_keys == 0) ? "." : ":");

	for (i = 0, key = (struct scsi_per_res_key *)&hdr[1]; i < num_keys;
	     i++, key++) {
		FUNC1(stdout, "%u: %jd\n", i,
			(uintmax_t)FUNC3(key->key));
	}
}