
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ isdigit (char const) ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static int
smb_rap_parserpdata(const char *s, char **next, int *rlen)
{
 char *np;
 int len, m;

 m = 1;
 switch (*s++) {
     case 'B':
  len = 1;
  break;
     case 'W':
  len = 2;
  break;
     case 'D':
     case 'O':
     case 'z':
  len = 4;
  break;
     default:
  return EINVAL;
 }
 if (isdigit(*s)) {
  len *= strtoul(s, &np, 10);
  s = np;
 }
 *rlen = len;
 *(const char**)next = s;
 return 0;
}
