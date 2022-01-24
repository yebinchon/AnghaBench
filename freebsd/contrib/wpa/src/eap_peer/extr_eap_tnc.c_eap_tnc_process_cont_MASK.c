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
typedef  int /*<<< orphan*/  u8 ;
struct eap_tnc_data {int /*<<< orphan*/  in_buf; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAIL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct eap_tnc_data *data,
				const u8 *buf, size_t len)
{
	/* Process continuation of a pending message */
	if (len > FUNC2(data->in_buf)) {
		FUNC0(MSG_DEBUG, "EAP-TNC: Fragment overflow");
		data->state = FAIL;
		return -1;
	}

	FUNC1(data->in_buf, buf, len);
	FUNC0(MSG_DEBUG, "EAP-TNC: Received %lu bytes, waiting for "
		   "%lu bytes more", (unsigned long) len,
		   (unsigned long) FUNC2(data->in_buf));

	return 0;
}