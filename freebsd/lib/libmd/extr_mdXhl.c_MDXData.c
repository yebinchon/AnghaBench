
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MDX_CTX ;


 char* MDXEnd (int *,char*) ;
 int MDXInit (int *) ;
 int MDXUpdate (int *,void const*,unsigned int) ;

char *
MDXData (const void *data, unsigned int len, char *buf)
{
 MDX_CTX ctx;

 MDXInit(&ctx);
 MDXUpdate(&ctx,data,len);
 return (MDXEnd(&ctx, buf));
}
