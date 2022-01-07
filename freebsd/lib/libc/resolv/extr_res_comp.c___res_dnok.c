
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int domainchar (int) ;

int
res_dnok(const char *dn) {
 int ch;

 while ((ch = *dn++) != '\0')
  if (!domainchar(ch))
   return (0);
 return (1);
}
