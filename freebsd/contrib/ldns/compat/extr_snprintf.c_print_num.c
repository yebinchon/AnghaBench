
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char get_negsign (int,int,int) ;
 int print_pad (char**,size_t*,int*,char,int) ;
 int spool_str_rev (char**,size_t*,int*,char*,int) ;

__attribute__((used)) static void
print_num(char** at, size_t* left, int* ret, int minw, int precision,
 int prgiven, int zeropad, int minus, int plus, int space,
 int zero, int negative, char* buf, int len)
{
 int w = len;
 char s = get_negsign(negative, plus, space);
 if(minus) {


  int numw = w;
  if(precision == 0 && zero) numw = 0;
  if(numw < precision) numw = precision;
  if(s) numw++;


  if(s) print_pad(at, left, ret, s, 1);


  if(precision == 0 && zero) {

  } else {
   if(w < precision)
    print_pad(at, left, ret, '0', precision - w);
   spool_str_rev(at, left, ret, buf, len);
  }

  if(numw < minw)
   print_pad(at, left, ret, ' ', minw - numw);
 } else {


  int numw = w;
  if(precision == 0 && zero) numw = 0;
  if(numw < precision) numw = precision;
  if(!prgiven && zeropad && numw < minw) numw = minw;
  else if(s) numw++;


  if(numw < minw)
   print_pad(at, left, ret, ' ', minw - numw);

  if(s) {
   print_pad(at, left, ret, s, 1);
   numw--;
  }

  if(w < numw)
   print_pad(at, left, ret, '0', numw - w);
  if(precision == 0 && zero)
   return;

  spool_str_rev(at, left, ret, buf, len);
 }
}
