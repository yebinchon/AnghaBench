
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock_codes ;
 char const* getcode (int,int ) ;

const char *
ceventstr(
 int num
 )
{
 return getcode(num, clock_codes);
}
