
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bslashchar (int) ;
 int domainchar (int) ;
 scalar_t__ periodchar (int) ;
 int res_hnok (char const*) ;

int
res_mailok(const char *dn) {
 int ch, escaped = 0;


 if (*dn == '\0')
  return (1);


 while ((ch = *dn++) != '\0') {
  if (!domainchar(ch))
   return (0);
  if (!escaped && periodchar(ch))
   break;
  if (escaped)
   escaped = 0;
  else if (bslashchar(ch))
   escaped = 1;
 }
 if (periodchar(ch))
  return (res_hnok(dn));
 return (0);
}
