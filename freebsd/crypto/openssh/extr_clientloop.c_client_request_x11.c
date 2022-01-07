
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_int ;
struct ssh {int dummy; } ;
struct TYPE_6__ {int forward_x11; } ;
struct TYPE_5__ {int force_drain; } ;
typedef TYPE_1__ Channel ;


 int CHAN_TCP_WINDOW_DEFAULT ;
 int CHAN_X11_PACKET_DEFAULT ;
 int SSH_CHANNEL_X11_OPEN ;
 TYPE_1__* channel_new (struct ssh*,char*,int ,int,int,int,int ,int ,int ,char*,int) ;
 int debug (char*,char*,int ) ;
 int error (char*) ;
 int free (char*) ;
 scalar_t__ monotime () ;
 TYPE_2__ options ;
 int packet_check_eom () ;
 int packet_get_int () ;
 char* packet_get_string (int *) ;
 int verbose (char*) ;
 int x11_connect_display (struct ssh*) ;
 scalar_t__ x11_refuse_time ;

__attribute__((used)) static Channel *
client_request_x11(struct ssh *ssh, const char *request_type, int rchan)
{
 Channel *c = ((void*)0);
 char *originator;
 u_short originator_port;
 int sock;

 if (!options.forward_x11) {
  error("Warning: ssh server tried X11 forwarding.");
  error("Warning: this is probably a break-in attempt by a "
      "malicious server.");
  return ((void*)0);
 }
 if (x11_refuse_time != 0 && (u_int)monotime() >= x11_refuse_time) {
  verbose("Rejected X11 connection after ForwardX11Timeout "
      "expired");
  return ((void*)0);
 }
 originator = packet_get_string(((void*)0));
 originator_port = packet_get_int();
 packet_check_eom();

 debug("client_request_x11: request from %s %d", originator,
     originator_port);
 free(originator);
 sock = x11_connect_display(ssh);
 if (sock < 0)
  return ((void*)0);
 c = channel_new(ssh, "x11",
     SSH_CHANNEL_X11_OPEN, sock, sock, -1,
     CHAN_TCP_WINDOW_DEFAULT, CHAN_X11_PACKET_DEFAULT, 0, "x11", 1);
 c->force_drain = 1;
 return c;
}
