
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_pad (char**,size_t*,int*,char,int) ;

__attribute__((used)) static void
print_char(char** at, size_t* left, int* ret, int c,
 int minw, int minus)
{
 if(1 < minw && !minus)
  print_pad(at, left, ret, ' ', minw - 1);
 print_pad(at, left, ret, c, 1);
 if(1 < minw && minus)
  print_pad(at, left, ret, ' ', minw - 1);
}
