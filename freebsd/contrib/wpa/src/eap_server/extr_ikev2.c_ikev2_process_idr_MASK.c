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
typedef  scalar_t__ u8 ;
struct ikev2_initiator_data {scalar_t__ const* IDr; scalar_t__ IDr_type; size_t IDr_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*) ; 
 scalar_t__ FUNC1 (scalar_t__ const*,scalar_t__ const*,size_t) ; 
 scalar_t__ const* FUNC2 (scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC5(struct ikev2_initiator_data *data,
			     const u8 *idr, size_t idr_len)
{
	u8 id_type;

	if (idr == NULL) {
		FUNC4(MSG_INFO, "IKEV2: No IDr received");
		return -1;
	}

	if (idr_len < 4) {
		FUNC4(MSG_INFO, "IKEV2: Too short IDr payload");
		return -1;
	}

	id_type = idr[0];
	idr += 4;
	idr_len -= 4;

	FUNC4(MSG_DEBUG, "IKEV2: IDr ID Type %d", id_type);
	FUNC3(MSG_DEBUG, "IKEV2: IDr", idr, idr_len);
	if (data->IDr) {
		if (id_type != data->IDr_type || idr_len != data->IDr_len ||
		    FUNC1(idr, data->IDr, idr_len) != 0) {
			FUNC4(MSG_INFO, "IKEV2: IDr differs from the one "
				   "received earlier");
			FUNC4(MSG_DEBUG, "IKEV2: Previous IDr ID Type %d",
				   id_type);
			FUNC3(MSG_DEBUG, "Previous IKEV2: IDr",
					  data->IDr, data->IDr_len);
			return -1;
		}
		FUNC0(data->IDr);
	}
	data->IDr = FUNC2(idr, idr_len);
	if (data->IDr == NULL)
		return -1;
	data->IDr_len = idr_len;
	data->IDr_type = id_type;

	return 0;
}