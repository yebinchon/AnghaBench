
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_ign(int c)
{
 if (c == 0) {
  return (0);
 }
 if (c <= 32 || c == '-' || c == '_' || c == '.'
  || c == '/' || c == '+' || c == ':')
 {
  return (1);
 }
 return (0);
}
