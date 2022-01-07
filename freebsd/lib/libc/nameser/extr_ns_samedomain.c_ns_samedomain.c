
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

int
ns_samedomain(const char *a, const char *b) {
 size_t la, lb;
 int diff, i, escaped;
 const char *cp;

 la = strlen(a);
 lb = strlen(b);


 if (la != 0U && a[la - 1] == '.') {
  escaped = 0;

  for (i = la - 2; i >= 0; i--)
   if (a[i] == '\\') {
    if (escaped)
     escaped = 0;
    else
     escaped = 1;
   } else
    break;
  if (!escaped)
   la--;
 }


 if (lb != 0U && b[lb - 1] == '.') {
  escaped = 0;

  for (i = lb - 2; i >= 0; i--)
   if (b[i] == '\\') {
    if (escaped)
     escaped = 0;
    else
     escaped = 1;
   } else
    break;
  if (!escaped)
   lb--;
 }


 if (lb == 0U)
  return (1);


 if (lb > la)
  return (0);


 if (lb == la)
  return (strncasecmp(a, b, lb) == 0);



 diff = la - lb;






 if (diff < 2)
  return (0);






 if (a[diff - 1] != '.')
  return (0);





 escaped = 0;
 for (i = diff - 2; i >= 0; i--)
  if (a[i] == '\\') {
   if (escaped)
    escaped = 0;
   else
    escaped = 1;
  } else
   break;
 if (escaped)
  return (0);


 cp = a + diff;
 return (strncasecmp(cp, b, lb) == 0);
}
