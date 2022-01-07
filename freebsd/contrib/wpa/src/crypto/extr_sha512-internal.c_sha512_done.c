
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha512_state {int curlen; int length; unsigned char* buf; int* state; } ;


 int CONST64 (int) ;
 int WPA_PUT_BE64 (unsigned char*,int) ;
 int sha512_compress (struct sha512_state*,unsigned char*) ;

int sha512_done(struct sha512_state *md, unsigned char *out)
{
 int i;

 if (md->curlen >= sizeof(md->buf))
  return -1;


 md->length += md->curlen * CONST64(8);


 md->buf[md->curlen++] = (unsigned char) 0x80;





 if (md->curlen > 112) {
  while (md->curlen < 128) {
   md->buf[md->curlen++] = (unsigned char) 0;
  }
  sha512_compress(md, md->buf);
  md->curlen = 0;
 }





 while (md->curlen < 120) {
  md->buf[md->curlen++] = (unsigned char) 0;
 }


 WPA_PUT_BE64(md->buf + 120, md->length);
 sha512_compress(md, md->buf);


 for (i = 0; i < 8; i++)
  WPA_PUT_BE64(out + (8 * i), md->state[i]);

 return 0;
}
