
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
special(char *s)
{
 char c;
 char b;

 switch (*s) {
 case '^':
  b = *++s;
  if (b == '?') {
      c = b | 0x40;
  } else {
      c = b & 0x1f;
  }
  break;
 default:
  c = *s;
  break;
 }
 return c;
}
