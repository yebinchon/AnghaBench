
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;
 int snprintf (char*,int,char*,unsigned char) ;

char *
octets2hex(unsigned char *ptr, size_t n)
{
 char *hex;
 char *cp;
 size_t i;

 hex = malloc(2 * n + 1);
 if (hex != ((void*)0)) {
  for (i = 0, cp = hex; i < n; i++) {
   snprintf(&cp[i*2], 3, "%02X", ptr[i]);
  }
 }
 return (hex);
}
