
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
slow_strchr(char *buf, int ch)
{
 unsigned char c = 1;

 ch &= 0xff;

 for (; c != 0; buf++) {
  c = *buf;
  if (c == ch)
   return buf;
 }
 return 0;
}
