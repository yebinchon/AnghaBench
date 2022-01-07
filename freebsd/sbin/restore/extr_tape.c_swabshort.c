
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;



__attribute__((used)) static u_char *
swabshort(u_char *sp, int n)
{
 char c;

 while (--n >= 0) {
  c = sp[0]; sp[0] = sp[1]; sp[1] = c;
  sp += 2;
 }
 return (sp);
}
