
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MDX_CTX ;


 int LENGTH ;
 int MDXFinal (unsigned char*,int *) ;
 char* malloc (int) ;

char *
MDXEnd(MDX_CTX *ctx, char *buf)
{
 int i;
 unsigned char digest[LENGTH];
 static const char hex[]="0123456789abcdef";

 if (!buf)
  buf = malloc(2*LENGTH + 1);
 if (!buf)
  return 0;
 MDXFinal(digest, ctx);
 for (i = 0; i < LENGTH; i++) {
  buf[i+i] = hex[digest[i] >> 4];
  buf[i+i+1] = hex[digest[i] & 0x0f];
 }
 buf[i+i] = '\0';
 return buf;
}
