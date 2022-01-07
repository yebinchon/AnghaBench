
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SHA1_CTX ;
typedef int MD5_CTX ;


 int CHOMP (unsigned char*,int,int) ;
 int MD5Final (unsigned char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,unsigned char*,int) ;
 int SHA1Final (unsigned char*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,unsigned char*,int) ;
 int * fgets (char*,int,int ) ;
 int hexdump (unsigned char*,int) ;
 scalar_t__ mflag ;
 int stdin ;
 int strlen (char*) ;

__attribute__((used)) static void
regress(void)
{
 unsigned char buf[1024];
 unsigned char out[20];
 int len, outlen, last;

 while (fgets((char *)buf, sizeof(buf), stdin) != ((void*)0)) {
  last = 0;

  len = strlen((char *)buf);
  CHOMP(buf, len, last);
  if (mflag) {
   MD5_CTX ctx;

   MD5Init(&ctx);
   MD5Update(&ctx, buf, len);
   while (!last &&
       fgets((char *)buf, sizeof(buf), stdin) != ((void*)0)) {
    len = strlen((char *)buf);
    CHOMP(buf, len, last);
    MD5Update(&ctx, buf, len);
   }
   MD5Final(out, &ctx);
   outlen = 16;
  } else {
   SHA1_CTX ctx;

   SHA1Init(&ctx);
   SHA1Update(&ctx, buf, len);
   while (!last &&
       fgets((char *)buf, sizeof(buf), stdin) != ((void*)0)) {
    len = strlen((char *)buf);
    CHOMP(buf, len, last);
    SHA1Update(&ctx, buf, len);
   }
   SHA1Final(out, &ctx);
   outlen = 20;
  }
  hexdump(out, outlen);
 }
}
