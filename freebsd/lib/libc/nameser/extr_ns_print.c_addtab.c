
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T (scalar_t__) ;
 scalar_t__ addstr (char*,int,char**,size_t*) ;

__attribute__((used)) static int
addtab(size_t len, size_t target, int spaced, char **buf, size_t *buflen) {
 size_t save_buflen = *buflen;
 char *save_buf = *buf;
 int t;

 if (spaced || len >= target - 1) {
  T(addstr("  ", 2, buf, buflen));
  spaced = 1;
 } else {
  for (t = (target - len - 1) / 8; t >= 0; t--)
   if (addstr("\t", 1, buf, buflen) < 0) {
    *buflen = save_buflen;
    *buf = save_buf;
    return (-1);
   }
  spaced = 0;
 }
 return (spaced);
}
