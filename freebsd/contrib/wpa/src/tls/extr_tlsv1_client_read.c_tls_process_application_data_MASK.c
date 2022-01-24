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
struct tlsv1_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_ALERT_UNEXPECTED_MESSAGE ; 
 scalar_t__ TLS_CONTENT_TYPE_APPLICATION_DATA ; 
 scalar_t__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct tlsv1_client *conn, u8 ct,
					const u8 *in_data, size_t *in_len,
					u8 **out_data, size_t *out_len)
{
	const u8 *pos;
	size_t left;

	if (ct != TLS_CONTENT_TYPE_APPLICATION_DATA) {
		FUNC4(MSG_DEBUG, "TLSv1: Expected Application Data; "
			   "received content type 0x%x", ct);
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	pos = in_data;
	left = *in_len;

	FUNC3(MSG_DEBUG, "TLSv1: Application Data included in Handshake",
		    pos, left);

	*out_data = FUNC0(left);
	if (*out_data) {
		FUNC1(*out_data, pos, left);
		*out_len = left;
	}

	return 0;
}