
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSH2_MSG_CHANNEL_CLOSE ;
 int SSH2_MSG_CHANNEL_DATA ;
 int SSH2_MSG_CHANNEL_EOF ;
 int SSH2_MSG_CHANNEL_EXTENDED_DATA ;
 int SSH2_MSG_CHANNEL_FAILURE ;
 int SSH2_MSG_CHANNEL_OPEN ;
 int SSH2_MSG_CHANNEL_OPEN_CONFIRMATION ;
 int SSH2_MSG_CHANNEL_OPEN_FAILURE ;
 int SSH2_MSG_CHANNEL_REQUEST ;
 int SSH2_MSG_CHANNEL_SUCCESS ;
 int SSH2_MSG_CHANNEL_WINDOW_ADJUST ;
 int SSH2_MSG_GLOBAL_REQUEST ;
 int SSH2_MSG_KEXINIT ;
 int SSH2_MSG_REQUEST_FAILURE ;
 int SSH2_MSG_REQUEST_SUCCESS ;
 int channel_input_data ;
 int channel_input_extended_data ;
 int channel_input_ieof ;
 int channel_input_oclose ;
 int channel_input_open_confirmation ;
 int channel_input_open_failure ;
 int channel_input_window_adjust ;
 int debug (char*) ;
 int dispatch_init (int *) ;
 int dispatch_protocol_error ;
 int dispatch_set (int ,int *) ;
 int kex_input_kexinit ;
 int server_input_channel_open ;
 int server_input_channel_req ;
 int server_input_global_request ;
 int server_input_keep_alive ;

__attribute__((used)) static void
server_init_dispatch(void)
{
 debug("server_init_dispatch");
 dispatch_init(&dispatch_protocol_error);
 dispatch_set(SSH2_MSG_CHANNEL_CLOSE, &channel_input_oclose);
 dispatch_set(SSH2_MSG_CHANNEL_DATA, &channel_input_data);
 dispatch_set(SSH2_MSG_CHANNEL_EOF, &channel_input_ieof);
 dispatch_set(SSH2_MSG_CHANNEL_EXTENDED_DATA, &channel_input_extended_data);
 dispatch_set(SSH2_MSG_CHANNEL_OPEN, &server_input_channel_open);
 dispatch_set(SSH2_MSG_CHANNEL_OPEN_CONFIRMATION, &channel_input_open_confirmation);
 dispatch_set(SSH2_MSG_CHANNEL_OPEN_FAILURE, &channel_input_open_failure);
 dispatch_set(SSH2_MSG_CHANNEL_REQUEST, &server_input_channel_req);
 dispatch_set(SSH2_MSG_CHANNEL_WINDOW_ADJUST, &channel_input_window_adjust);
 dispatch_set(SSH2_MSG_GLOBAL_REQUEST, &server_input_global_request);

 dispatch_set(SSH2_MSG_CHANNEL_SUCCESS, &server_input_keep_alive);
 dispatch_set(SSH2_MSG_CHANNEL_FAILURE, &server_input_keep_alive);
 dispatch_set(SSH2_MSG_REQUEST_SUCCESS, &server_input_keep_alive);
 dispatch_set(SSH2_MSG_REQUEST_FAILURE, &server_input_keep_alive);

 dispatch_set(SSH2_MSG_KEXINIT, &kex_input_kexinit);
}
