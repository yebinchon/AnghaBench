
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 scalar_t__ print_dec_ll (char*,int,unsigned long long) ;
 int print_remainder (char*,int,double,int) ;

__attribute__((used)) static int
print_float_g(char* buf, int max, double value, int prec)
{
 unsigned long long whole = (unsigned long long)value;
 double remain = value - (double)whole;
 int before = 0;
 int len = 0;


 while(whole > 0) {
  before++;
  whole /= 10;
 }
 whole = (unsigned long long)value;

 if(prec > before && remain != 0.0) {

  len = print_remainder(buf, max, remain, prec-before);
  while(len > 0 && buf[0]=='0') {
   memmove(buf, buf+1, --len);
  }
 }
 len += print_dec_ll(buf+len, max-len, whole);
 return len;
}
