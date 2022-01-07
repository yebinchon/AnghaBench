
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_bind_special(int c)
{
 switch(c) {
  case '{':
  case '}':
  case '"':
  case ';':
   return 1;
 }
 return 0;
}
