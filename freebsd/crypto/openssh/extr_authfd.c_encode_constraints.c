
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sshbuf {int dummy; } ;


 int SSH_AGENT_CONSTRAIN_CONFIRM ;
 int SSH_AGENT_CONSTRAIN_LIFETIME ;
 int SSH_AGENT_CONSTRAIN_MAXSIGN ;
 int sshbuf_put_u32 (struct sshbuf*,scalar_t__) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;

__attribute__((used)) static int
encode_constraints(struct sshbuf *m, u_int life, u_int confirm, u_int maxsign)
{
 int r;

 if (life != 0) {
  if ((r = sshbuf_put_u8(m, SSH_AGENT_CONSTRAIN_LIFETIME)) != 0 ||
      (r = sshbuf_put_u32(m, life)) != 0)
   goto out;
 }
 if (confirm != 0) {
  if ((r = sshbuf_put_u8(m, SSH_AGENT_CONSTRAIN_CONFIRM)) != 0)
   goto out;
 }
 if (maxsign != 0) {
  if ((r = sshbuf_put_u8(m, SSH_AGENT_CONSTRAIN_MAXSIGN)) != 0 ||
      (r = sshbuf_put_u32(m, maxsign)) != 0)
   goto out;
 }
 r = 0;
 out:
 return r;
}
