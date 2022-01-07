
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int EINVAL ;
 int errno ;
 int isascii (int) ;
 scalar_t__ isdigit (int) ;
 scalar_t__ islower (int) ;
 int isprint (int) ;
 int toupper (int) ;

int
ns_parse_ttl(const char *src, u_long *dst) {
 u_long ttl, tmp;
 int ch, digits, dirty;

 ttl = 0;
 tmp = 0;
 digits = 0;
 dirty = 0;
 while ((ch = *src++) != '\0') {
  if (!isascii(ch) || !isprint(ch))
   goto einval;
  if (isdigit(ch)) {
   tmp *= 10;
   tmp += (ch - '0');
   digits++;
   continue;
  }
  if (digits == 0)
   goto einval;
  if (islower(ch))
   ch = toupper(ch);
  switch (ch) {
  case 'W': tmp *= 7;
  case 'D': tmp *= 24;
  case 'H': tmp *= 60;
  case 'M': tmp *= 60;
  case 'S': break;
  default: goto einval;
  }
  ttl += tmp;
  tmp = 0;
  digits = 0;
  dirty = 1;
 }
 if (digits > 0) {
  if (dirty)
   goto einval;
  else
   ttl += tmp;
 } else if (!dirty)
  goto einval;
 *dst = ttl;
 return (0);

 einval:
 errno = EINVAL;
 return (-1);
}
