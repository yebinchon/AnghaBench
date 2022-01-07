
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ssh {int dummy; } ;


 int SSH2_MSG_REQUEST_FAILURE ;
 int SSH2_MSG_REQUEST_SUCCESS ;
 int client_input_hostkeys () ;
 int debug (char*,char*,int) ;
 int free (char*) ;
 int packet_get_char () ;
 char* packet_get_cstring (int *) ;
 int packet_send () ;
 int packet_start (int ) ;
 int packet_write_wait () ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
client_input_global_request(int type, u_int32_t seq, struct ssh *ssh)
{
 char *rtype;
 int want_reply;
 int success = 0;

 rtype = packet_get_cstring(((void*)0));
 want_reply = packet_get_char();
 debug("client_input_global_request: rtype %s want_reply %d",
     rtype, want_reply);
 if (strcmp(rtype, "hostkeys-00@openssh.com") == 0)
  success = client_input_hostkeys();
 if (want_reply) {
  packet_start(success ?
      SSH2_MSG_REQUEST_SUCCESS : SSH2_MSG_REQUEST_FAILURE);
  packet_send();
  packet_write_wait();
 }
 free(rtype);
 return 0;
}
