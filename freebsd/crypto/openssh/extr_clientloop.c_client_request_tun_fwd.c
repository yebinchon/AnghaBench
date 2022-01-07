
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_5__ {scalar_t__ tun_open; } ;
struct TYPE_4__ {int datagram; int self; int local_window_max; int local_maxpacket; } ;
typedef TYPE_1__ Channel ;


 int CHAN_TCP_PACKET_DEFAULT ;
 int CHAN_TCP_WINDOW_DEFAULT ;
 int SSH2_MSG_CHANNEL_OPEN ;
 int SSH_CHANNEL_OPENING ;
 int SSH_TUNMODE_NO ;
 scalar_t__ SSH_TUNMODE_POINTOPOINT ;
 TYPE_1__* channel_new (struct ssh*,char*,int ,int,int,int,int ,int ,int ,char*,int) ;
 int channel_register_filter (struct ssh*,int,int ,int ,int *,int *) ;
 int debug (char*,...) ;
 int error (char*) ;
 TYPE_2__ options ;
 int packet_put_cstring (char*) ;
 int packet_put_int (int) ;
 int packet_send () ;
 int packet_start (int ) ;
 int sys_tun_infilter ;
 int sys_tun_outfilter ;
 int tun_open (int,int,char**) ;

char *
client_request_tun_fwd(struct ssh *ssh, int tun_mode,
    int local_tun, int remote_tun)
{
 Channel *c;
 int fd;
 char *ifname = ((void*)0);

 if (tun_mode == SSH_TUNMODE_NO)
  return 0;

 debug("Requesting tun unit %d in mode %d", local_tun, tun_mode);


 if ((fd = tun_open(local_tun, tun_mode, &ifname)) == -1) {
  error("Tunnel device open failed.");
  return ((void*)0);
 }
 debug("Tunnel forwarding using interface %s", ifname);

 c = channel_new(ssh, "tun", SSH_CHANNEL_OPENING, fd, fd, -1,
     CHAN_TCP_WINDOW_DEFAULT, CHAN_TCP_PACKET_DEFAULT, 0, "tun", 1);
 c->datagram = 1;







 packet_start(SSH2_MSG_CHANNEL_OPEN);
 packet_put_cstring("tun@openssh.com");
 packet_put_int(c->self);
 packet_put_int(c->local_window_max);
 packet_put_int(c->local_maxpacket);
 packet_put_int(tun_mode);
 packet_put_int(remote_tun);
 packet_send();

 return ifname;
}
