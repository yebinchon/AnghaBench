
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int format_octal_recursive (int,char*,int) ;

__attribute__((used)) static int
format_octal(int64_t v, void *p, int digits)
{
 int64_t max;
 int ret;

 max = (((int64_t)1) << (digits * 3)) - 1;
 if (v >= 0 && v <= max) {
     format_octal_recursive(v, (char *)p, digits);
     ret = 0;
 } else {
     format_octal_recursive(max, (char *)p, digits);
     ret = -1;
 }
 return (ret);
}
