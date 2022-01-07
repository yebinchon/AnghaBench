
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
typedef int u_char ;
struct ssh {int dummy; } ;


 int SSH2_MSG_IGNORE ;
 int arc4random () ;
 int sshpkt_put_u32 (struct ssh*,int) ;
 int sshpkt_put_u8 (struct ssh*,int) ;
 int sshpkt_start (struct ssh*,int ) ;

int
sshpkt_msg_ignore(struct ssh *ssh, u_int nbytes)
{
 u_int32_t rnd = 0;
 int r;
 u_int i;

 if ((r = sshpkt_start(ssh, SSH2_MSG_IGNORE)) != 0 ||
     (r = sshpkt_put_u32(ssh, nbytes)) != 0)
  return r;
 for (i = 0; i < nbytes; i++) {
  if (i % 4 == 0)
   rnd = arc4random();
  if ((r = sshpkt_put_u8(ssh, (u_char)rnd & 0xff)) != 0)
   return r;
  rnd >>= 8;
 }
 return 0;
}
