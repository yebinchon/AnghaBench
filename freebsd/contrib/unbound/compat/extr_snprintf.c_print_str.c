
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int my_strnlen (char*,int) ;
 int print_pad (char**,size_t*,int*,char,int) ;
 int spool_str (char**,size_t*,int*,char*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
print_str(char** at, size_t* left, int* ret, char* s,
 int minw, int precision, int prgiven, int minus)
{
 int w;

 if(prgiven)
  w = my_strnlen(s, precision);
 else w = (int)strlen(s);
 if(w < minw && !minus)
  print_pad(at, left, ret, ' ', minw - w);
 spool_str(at, left, ret, s, w);
 if(w < minw && minus)
  print_pad(at, left, ret, ' ', minw - w);
}
