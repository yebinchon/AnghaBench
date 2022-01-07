
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 int not_reached () ;
 char* u2s (int ,int,int,char*,size_t*) ;

__attribute__((used)) static char *
d2s(intmax_t x, char sign, char *s, size_t *slen_p) {
 bool neg;

 if ((neg = (x < 0))) {
  x = -x;
 }
 s = u2s(x, 10, 0, s, slen_p);
 if (neg) {
  sign = '-';
 }
 switch (sign) {
 case '-':
  if (!neg) {
   break;
  }

 case ' ':
 case '+':
  s--;
  (*slen_p)++;
  *s = sign;
  break;
 default: not_reached();
 }
 return s;
}
