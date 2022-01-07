
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int sigsegvcode ;

const char *
sysdecode_sigsegv_code(int si_code)
{

 return (lookup_value(sigsegvcode, si_code));
}
