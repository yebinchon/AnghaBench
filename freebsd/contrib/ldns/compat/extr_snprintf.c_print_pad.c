
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
print_pad(char** at, size_t* left, int* ret, char p, int num)
{
 while(num--) {
  if(*left > 1) {
   *(*at)++ = p;
   (*left)--;
  }
  (*ret)++;
 }
}
