
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ print_dec_ll (char*,int,unsigned long long) ;
 int print_remainder (char*,int,double,int) ;

__attribute__((used)) static int
print_float(char* buf, int max, double value, int prec)
{





 unsigned long long whole = (unsigned long long)value;
 double remain = value - (double)whole;
 int len = 0;
 if(prec != 0)
  len = print_remainder(buf, max, remain, prec);
 len += print_dec_ll(buf+len, max-len, whole);
 return len;
}
