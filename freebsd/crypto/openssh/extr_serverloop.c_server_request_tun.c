
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_8__ {int force_tun_device; } ;
struct TYPE_7__ {int permit_tun; } ;
struct TYPE_6__ {int datagram; int self; } ;
typedef TYPE_1__ Channel ;


 int CHAN_TCP_PACKET_DEFAULT ;
 int CHAN_TCP_WINDOW_DEFAULT ;
 int SSH_CHANNEL_OPEN ;
 int SSH_TUNID_ANY ;


 TYPE_5__* auth_opts ;
 TYPE_1__* channel_new (struct ssh*,char*,int ,int,int,int,int ,int ,int ,char*,int) ;
 int channel_register_filter (struct ssh*,int ,int ,int ,int *,int *) ;
 int debug (char*,char*) ;
 int free (char*) ;
 TYPE_3__ options ;
 int packet_get_int () ;
 int packet_send_debug (char*) ;
 int sys_tun_infilter ;
 int sys_tun_outfilter ;
 char* tun_fwd_ifnames ;
 int tun_open (int,int,char**) ;
 int xasprintf (char**,char*,char*,char*,char*) ;

__attribute__((used)) static Channel *
server_request_tun(struct ssh *ssh)
{
 Channel *c = ((void*)0);
 int mode, tun, sock;
 char *tmp, *ifname = ((void*)0);

 mode = packet_get_int();
 switch (mode) {
 case 128:
 case 129:
  break;
 default:
  packet_send_debug("Unsupported tunnel device mode.");
  return ((void*)0);
 }
 if ((options.permit_tun & mode) == 0) {
  packet_send_debug("Server has rejected tunnel device "
      "forwarding");
  return ((void*)0);
 }

 tun = packet_get_int();
 if (auth_opts->force_tun_device != -1) {
  if (tun != SSH_TUNID_ANY && auth_opts->force_tun_device != tun)
   goto done;
  tun = auth_opts->force_tun_device;
 }
 sock = tun_open(tun, mode, &ifname);
 if (sock < 0)
  goto done;
 debug("Tunnel forwarding using interface %s", ifname);

 c = channel_new(ssh, "tun", SSH_CHANNEL_OPEN, sock, sock, -1,
     CHAN_TCP_WINDOW_DEFAULT, CHAN_TCP_PACKET_DEFAULT, 0, "tun", 1);
 c->datagram = 1;
 tmp = tun_fwd_ifnames;
 xasprintf(&tun_fwd_ifnames, "%s%s%s",
     tun_fwd_ifnames == ((void*)0) ? "" : tun_fwd_ifnames,
     tun_fwd_ifnames == ((void*)0) ? "" : ",",
     ifname);
 free(tmp);
 free(ifname);

 done:
 if (c == ((void*)0))
  packet_send_debug("Failed to open the tunnel device.");
 return c;
}
