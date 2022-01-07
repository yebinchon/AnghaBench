
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha256_state {int curlen; unsigned long length; unsigned char* buf; } ;


 unsigned long MIN (unsigned long,unsigned long) ;
 unsigned long SHA256_BLOCK_SIZE ;
 int os_memcpy (unsigned char*,unsigned char const*,unsigned long) ;
 scalar_t__ sha256_compress (struct sha256_state*,unsigned char*) ;

int sha256_process(struct sha256_state *md, const unsigned char *in,
     unsigned long inlen)
{
 unsigned long n;

 if (md->curlen >= sizeof(md->buf))
  return -1;

 while (inlen > 0) {
  if (md->curlen == 0 && inlen >= SHA256_BLOCK_SIZE) {
   if (sha256_compress(md, (unsigned char *) in) < 0)
    return -1;
   md->length += SHA256_BLOCK_SIZE * 8;
   in += SHA256_BLOCK_SIZE;
   inlen -= SHA256_BLOCK_SIZE;
  } else {
   n = MIN(inlen, (SHA256_BLOCK_SIZE - md->curlen));
   os_memcpy(md->buf + md->curlen, in, n);
   md->curlen += n;
   in += n;
   inlen -= n;
   if (md->curlen == SHA256_BLOCK_SIZE) {
    if (sha256_compress(md, md->buf) < 0)
     return -1;
    md->length += 8 * SHA256_BLOCK_SIZE;
    md->curlen = 0;
   }
  }
 }

 return 0;
}
