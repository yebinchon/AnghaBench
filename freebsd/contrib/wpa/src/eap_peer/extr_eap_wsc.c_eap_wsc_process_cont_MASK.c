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
struct eap_wsc_data {scalar_t__ in_op_code; int /*<<< orphan*/  in_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAIL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eap_wsc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__ const*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct eap_wsc_data *data,
				const u8 *buf, size_t len, u8 op_code)
{
	/* Process continuation of a pending message */
	if (op_code != data->in_op_code) {
		FUNC1(MSG_DEBUG, "EAP-WSC: Unexpected Op-Code %d in "
			   "fragment (expected %d)",
			   op_code, data->in_op_code);
		return -1;
	}

	if (len > FUNC3(data->in_buf)) {
		FUNC1(MSG_DEBUG, "EAP-WSC: Fragment overflow");
		FUNC0(data, FAIL);
		return -1;
	}

	FUNC2(data->in_buf, buf, len);
	FUNC1(MSG_DEBUG, "EAP-WSC: Received %lu bytes, waiting "
		   "for %lu bytes more", (unsigned long) len,
		   (unsigned long) FUNC3(data->in_buf));

	return 0;
}