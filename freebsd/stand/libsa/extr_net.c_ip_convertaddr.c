
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n_long ;


 int IP_ANYADDR ;
 int htonl (int) ;
 char* number (char*,int*) ;

n_long
ip_convertaddr(char *p)
{

 n_long addr = 0, n;

 if (p == ((void*)0) || *p == '\0')
  return 0;
 p = number(p, &n);
 addr |= (n << 24) & 0xff000000;
 if (*p == '\0' || *p++ != '.')
  return 0;
 p = number(p, &n);
 addr |= (n << 16) & 0xff0000;
 if (*p == '\0' || *p++ != '.')
  return 0;
 p = number(p, &n);
 addr |= (n << 8) & 0xff00;
 if (*p == '\0' || *p++ != '.')
  return 0;
 p = number(p, &n);
 addr |= n & 0xff;
 if (*p != '\0')
  return 0;

 return htonl(addr);
}
