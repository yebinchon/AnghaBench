
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int Char ;


 int EOS ;

__attribute__((used)) static int
g_Ctoc(const Char *str, char *buf, u_int len)
{

 while (len--) {
  if ((*buf++ = *str++) == EOS)
   return (0);
 }
 return (1);
}
