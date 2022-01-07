
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct sshbuf {int dummy; } ;


 size_t KEX_COOKIE_LEN ;
 size_t PROPOSAL_MAX ;
 int sshbuf_put_cstring (struct sshbuf*,char*) ;
 int sshbuf_put_u32 (struct sshbuf*,int ) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;
 int sshbuf_reset (struct sshbuf*) ;

int
kex_prop2buf(struct sshbuf *b, char *proposal[PROPOSAL_MAX])
{
 u_int i;
 int r;

 sshbuf_reset(b);





 for (i = 0; i < KEX_COOKIE_LEN; i++) {
  if ((r = sshbuf_put_u8(b, 0)) != 0)
   return r;
 }
 for (i = 0; i < PROPOSAL_MAX; i++) {
  if ((r = sshbuf_put_cstring(b, proposal[i])) != 0)
   return r;
 }
 if ((r = sshbuf_put_u8(b, 0)) != 0 ||
     (r = sshbuf_put_u32(b, 0)) != 0)
  return r;
 return 0;
}
