
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ssh {int dummy; } ;


 int sshpkt_put (struct ssh*,int const*,size_t) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int) ;

int
ssh_packet_put(struct ssh *ssh, int type, const u_char *data, size_t len)
{
 int r;

 if ((r = sshpkt_start(ssh, type)) != 0 ||
     (r = sshpkt_put(ssh, data, len)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  return r;
 return 0;
}
