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
struct ikev2_responder_data {int dummy; } ;
struct ikev2_payloads {int /*<<< orphan*/  auth_len; int /*<<< orphan*/  auth; int /*<<< orphan*/  cert_len; int /*<<< orphan*/  cert; int /*<<< orphan*/  idi_len; int /*<<< orphan*/  idi; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (struct ikev2_payloads*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ikev2_responder_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ikev2_responder_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ikev2_responder_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct ikev2_responder_data *data,
					   u8 next_payload,
					   u8 *payload, size_t payload_len)
{
	struct ikev2_payloads pl;

	FUNC4(MSG_DEBUG, "IKEV2: Processing decrypted payloads");

	if (FUNC0(&pl, next_payload, payload, payload +
				 payload_len) < 0) {
		FUNC4(MSG_INFO, "IKEV2: Failed to parse decrypted "
			   "payloads");
		return -1;
	}

	if (FUNC3(data, pl.idi, pl.idi_len) < 0 ||
	    FUNC2(data, pl.cert, pl.cert_len) < 0 ||
	    FUNC1(data, pl.auth, pl.auth_len) < 0)
		return -1;

	return 0;
}