
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _s_x {int dummy; } ;


 int match_token (struct _s_x*,char*) ;
 char* strchr (char*,char) ;

int
fill_flags(struct _s_x *flags, char *p, char **e, uint32_t *set,
    uint32_t *clear)
{
 char *q;
 int val;
 uint32_t *which;

 while (p && *p) {
  if (*p == '!') {
   p++;
   which = clear;
  } else
   which = set;
  q = strchr(p, ',');
  if (q)
   *q++ = '\0';
  val = match_token(flags, p);
  if (val <= 0) {
   if (e != ((void*)0))
    *e = p;
   return (-1);
  }
  *which |= (uint32_t)val;
  p = q;
 }
 return (0);
}
