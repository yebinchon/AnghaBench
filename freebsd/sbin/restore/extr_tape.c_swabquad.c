
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;



__attribute__((used)) static u_char *
swabquad(u_char *sp, int n)
{
 char c;

 while (--n >= 0) {
  c = sp[0]; sp[0] = sp[7]; sp[7] = c;
  c = sp[1]; sp[1] = sp[6]; sp[6] = c;
  c = sp[2]; sp[2] = sp[5]; sp[5] = c;
  c = sp[3]; sp[3] = sp[4]; sp[4] = c;
  sp += 8;
 }
 return (sp);
}
