
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_dec_ll (char*,int,unsigned long long) ;

__attribute__((used)) static int
print_remainder(char* buf, int max, double r, int prec)
{
 unsigned long long cap = 1;
 unsigned long long value;
 int len, i;
 if(prec > 19) prec = 19;
 if(max < prec) return 0;
 for(i=0; i<prec; i++) {
  cap *= 10;
 }
 r *= (double)cap;
 value = (unsigned long long)r;

 if(((unsigned long long)((r - (double)value)*10.0)) >= 5) {
  value++;


  if(value >= cap)
   value = cap-1;
 }
 len = print_dec_ll(buf, max, value);
 while(len < prec) {
  buf[len++] = '0';
 }
 if(len < max)
  buf[len++] = '.';
 return len;
}
