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
 int /*<<< orphan*/  channel_input_window_adjust ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dispatch_protocol_error ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kex_input_kexinit ; 
 int /*<<< orphan*/  server_input_channel_open ; 
 int /*<<< orphan*/  server_input_channel_req ; 
 int /*<<< orphan*/  server_input_global_request ; 
 int /*<<< orphan*/  server_input_keep_alive ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC0("server_init_dispatch");
	FUNC1(&dispatch_protocol_error);
	FUNC2(SSH2_MSG_CHANNEL_CLOSE, &channel_input_oclose);
	FUNC2(SSH2_MSG_CHANNEL_DATA, &channel_input_data);
	FUNC2(SSH2_MSG_CHANNEL_EOF, &channel_input_ieof);
	FUNC2(SSH2_MSG_CHANNEL_EXTENDED_DATA, &channel_input_extended_data);
	FUNC2(SSH2_MSG_CHANNEL_OPEN, &server_input_channel_open);
	FUNC2(SSH2_MSG_CHANNEL_OPEN_CONFIRMATION, &channel_input_open_confirmation);
	FUNC2(SSH2_MSG_CHANNEL_OPEN_FAILURE, &channel_input_open_failure);
	FUNC2(SSH2_MSG_CHANNEL_REQUEST, &server_input_channel_req);
	FUNC2(SSH2_MSG_CHANNEL_WINDOW_ADJUST, &channel_input_window_adjust);
	FUNC2(SSH2_MSG_GLOBAL_REQUEST, &server_input_global_request);
	/* client_alive */
	FUNC2(SSH2_MSG_CHANNEL_SUCCESS, &server_input_keep_alive);
	FUNC2(SSH2_MSG_CHANNEL_FAILURE, &server_input_keep_alive);
	FUNC2(SSH2_MSG_REQUEST_SUCCESS, &server_input_keep_alive);
	FUNC2(SSH2_MSG_REQUEST_FAILURE, &server_input_keep_alive);
	/* rekeying */
	FUNC2(SSH2_MSG_KEXINIT, &kex_input_kexinit);
}