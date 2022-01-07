
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbdata {int dummy; } ;


 int mb_put_mem (struct mbdata*,char const*,int) ;
 int mb_put_uint8 (struct mbdata*,int) ;
 int strlen (char const*) ;

int
mb_put_pstring(struct mbdata *mbp, const char *s)
{
 int error, len = strlen(s);

 if (len > 255) {
  len = 255;
 }
 if ((error = mb_put_uint8(mbp, len)) != 0)
  return error;
 return mb_put_mem(mbp, s, len);
}
