
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int n_long ;


 int INADDR_NONE ;
 int htonl (int) ;

n_long
inet_addr(char *cp)
{
 u_long val;
 int n;
 char c;
 u_int parts[4];
 u_int *pp = parts;

 for (;;) {





  val = 0;
  while ((c = *cp) != '\0') {
   if (c >= '0' && c <= '9') {
    val = (val * 10) + (c - '0');
    cp++;
    continue;
   }
   break;
  }
  if (*cp == '.') {






   if (pp >= parts + 3 || val > 0xff)
    goto bad;
   *pp++ = val, cp++;
  } else
   break;
 }



 if (*cp != '\0')
  goto bad;





 n = pp - parts + 1;
 switch (n) {

 case 1:
  break;

 case 2:
  if (val > 0xffffff)
   goto bad;
  val |= parts[0] << 24;
  break;

 case 3:
  if (val > 0xffff)
   goto bad;
  val |= (parts[0] << 24) | (parts[1] << 16);
  break;

 case 4:
  if (val > 0xff)
   goto bad;
  val |= (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8);
  break;
 }

 return (htonl(val));
 bad:
 return (htonl(INADDR_NONE));
}
