
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (unsigned char*,char,size_t) ;

__attribute__((used)) static void
set_str(unsigned char *p, const char *s, size_t l, char f, const char *map)
{
 unsigned char c;

 if (s == ((void*)0))
  s = "";
 while ((c = *s++) != 0 && l > 0) {
  if (c >= 0x80 || map[c] == 0)
   {

   if (c >= 'a' && c <= 'z') {

    c -= 0x20;
   } else
    c = 0x5f;
  }
  *p++ = c;
  l--;
 }


 if (l > 0)
  memset(p , f, l);
}
