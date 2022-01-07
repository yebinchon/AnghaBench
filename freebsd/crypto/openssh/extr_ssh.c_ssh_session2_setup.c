
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_2__ {int ip_qos_bulk; int ip_qos_interactive; scalar_t__ forward_agent; int forward_x11_timeout; int forward_x11_trusted; int xauth_location; scalar_t__ forward_x11; } ;


 int CONFIRM_WARN ;
 int channel_request_start (struct ssh*,int,char*,int ) ;
 int check_agent_present () ;
 int client_expect_confirm (struct ssh*,int,char*,int ) ;
 int client_session2_setup (struct ssh*,int,int,int ,char*,int *,int ,int ,char**) ;
 scalar_t__ client_x11_get_proto (struct ssh*,char const*,int ,int ,int ,char**,char**) ;
 int command ;
 int debug (char*) ;
 int fileno (int ) ;
 char* getenv (char*) ;
 TYPE_1__ options ;
 int packet_send () ;
 int packet_set_interactive (int,int ,int ) ;
 int stdin ;
 int subsystem_flag ;
 int tty_flag ;
 int x11_request_forwarding_with_spoofing (struct ssh*,int,char const*,char*,char*,int) ;

__attribute__((used)) static void
ssh_session2_setup(struct ssh *ssh, int id, int success, void *arg)
{
 extern char **environ;
 const char *display;
 int interactive = tty_flag;
 char *proto = ((void*)0), *data = ((void*)0);

 if (!success)
  return;

 display = getenv("DISPLAY");
 if (display == ((void*)0) && options.forward_x11)
  debug("X11 forwarding requested but DISPLAY not set");
 if (options.forward_x11 && client_x11_get_proto(ssh, display,
     options.xauth_location, options.forward_x11_trusted,
     options.forward_x11_timeout, &proto, &data) == 0) {

  debug("Requesting X11 forwarding with authentication "
      "spoofing.");
  x11_request_forwarding_with_spoofing(ssh, id, display, proto,
      data, 1);
  client_expect_confirm(ssh, id, "X11 forwarding", CONFIRM_WARN);

  interactive = 1;
 }

 check_agent_present();
 if (options.forward_agent) {
  debug("Requesting authentication agent forwarding.");
  channel_request_start(ssh, id, "auth-agent-req@openssh.com", 0);
  packet_send();
 }


 packet_set_interactive(interactive,
     options.ip_qos_interactive, options.ip_qos_bulk);

 client_session2_setup(ssh, id, tty_flag, subsystem_flag, getenv("TERM"),
     ((void*)0), fileno(stdin), command, environ);
}
