
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_4__ {int * auth_data; int * auth_proto; int screen; int single_connection; int self; } ;
typedef TYPE_1__ Session ;


 int error (char*,...) ;
 int free (int *) ;
 int packet_check_eom () ;
 int packet_get_char () ;
 int packet_get_int () ;
 void* packet_get_string (int *) ;
 int session_setup_x11fwd (struct ssh*,TYPE_1__*) ;
 scalar_t__ xauth_valid_string (int *) ;

__attribute__((used)) static int
session_x11_req(struct ssh *ssh, Session *s)
{
 int success;

 if (s->auth_proto != ((void*)0) || s->auth_data != ((void*)0)) {
  error("session_x11_req: session %d: "
      "x11 forwarding already active", s->self);
  return 0;
 }
 s->single_connection = packet_get_char();
 s->auth_proto = packet_get_string(((void*)0));
 s->auth_data = packet_get_string(((void*)0));
 s->screen = packet_get_int();
 packet_check_eom();

 if (xauth_valid_string(s->auth_proto) &&
     xauth_valid_string(s->auth_data))
  success = session_setup_x11fwd(ssh, s);
 else {
  success = 0;
  error("Invalid X11 forwarding data");
 }
 if (!success) {
  free(s->auth_proto);
  free(s->auth_data);
  s->auth_proto = ((void*)0);
  s->auth_data = ((void*)0);
 }
 return success;
}
