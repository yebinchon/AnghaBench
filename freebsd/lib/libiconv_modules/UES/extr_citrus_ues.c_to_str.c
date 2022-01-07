
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int ESCAPE ;

 int UCS2_ESC ;

 int UCS4_ESC ;
 int abort () ;
 int * xdig ;

__attribute__((used)) static __inline int
to_str(char *s, wchar_t wc, int bit)
{
 char *p;

 p = s;
 *p++ = ESCAPE;
 switch (bit) {
 case 129:
  *p++ = UCS2_ESC;
  break;
 case 128:
  *p++ = UCS4_ESC;
  break;
 default:
  abort();
 }
 do {
  *p++ = xdig[(wc >> (bit -= 4)) & 0xF];
 } while (bit > 0);
 return (p - s);
}
