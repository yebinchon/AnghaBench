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

/* Variables and functions */
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_CLOSE ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_DATA ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_EOF ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_EXTENDED_DATA ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_FAILURE ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_OPEN ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_OPEN_CONFIRMATION ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_OPEN_FAILURE ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_REQUEST ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_SUCCESS ; 
 int /*<<< orphan*/  SSH2_MSG_CHANNEL_WINDOW_ADJUST ; 
 int /*<<< orphan*/  SSH2_MSG_GLOBAL_REQUEST ; 
 int /*<<< orphan*/  SSH2_MSG_KEXINIT ; 
 int /*<<< orphan*/  SSH2_MSG_REQUEST_FAILURE ; 
 int /*<<< orphan*/  SSH2_MSG_REQUEST_SUCCESS ; 
 int /*<<< orphan*/  channel_input_data ; 
 int /*<<< orphan*/  channel_input_extended_data ; 
 int /*<<< orphan*/  channel_input_ieof ; 
 int /*<<< orphan*/  channel_input_oclose ; 
 int /*<<< orphan*/  channel_input_open_confirmation ; 
 int /*<<< orphan*/  channel_input_open_failure ; 
 int /*<<< orphan*/  channel_input_status_confirm ; 
 int /*<<< orphan*/  channel_input_window_adjust ; 
 int /*<<< orphan*/  client_global_request_reply ; 
 int /*<<< orphan*/  client_input_channel_open ; 
 int /*<<< orphan*/  client_input_channel_req ; 
 int /*<<< orphan*/  client_input_global_request ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dispatch_protocol_error ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kex_input_kexinit ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC0(&dispatch_protocol_error);

	FUNC1(SSH2_MSG_CHANNEL_CLOSE, &channel_input_oclose);
	FUNC1(SSH2_MSG_CHANNEL_DATA, &channel_input_data);
	FUNC1(SSH2_MSG_CHANNEL_EOF, &channel_input_ieof);
	FUNC1(SSH2_MSG_CHANNEL_EXTENDED_DATA, &channel_input_extended_data);
	FUNC1(SSH2_MSG_CHANNEL_OPEN, &client_input_channel_open);
	FUNC1(SSH2_MSG_CHANNEL_OPEN_CONFIRMATION, &channel_input_open_confirmation);
	FUNC1(SSH2_MSG_CHANNEL_OPEN_FAILURE, &channel_input_open_failure);
	FUNC1(SSH2_MSG_CHANNEL_REQUEST, &client_input_channel_req);
	FUNC1(SSH2_MSG_CHANNEL_WINDOW_ADJUST, &channel_input_window_adjust);
	FUNC1(SSH2_MSG_CHANNEL_SUCCESS, &channel_input_status_confirm);
	FUNC1(SSH2_MSG_CHANNEL_FAILURE, &channel_input_status_confirm);
	FUNC1(SSH2_MSG_GLOBAL_REQUEST, &client_input_global_request);

	/* rekeying */
	FUNC1(SSH2_MSG_KEXINIT, &kex_input_kexinit);

	/* global request reply messages */
	FUNC1(SSH2_MSG_REQUEST_FAILURE, &client_global_request_reply);
	FUNC1(SSH2_MSG_REQUEST_SUCCESS, &client_global_request_reply);
}