
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int rtpriofuncs ;

const char *
sysdecode_rtprio_function(int function)
{

 return (lookup_value(rtpriofuncs, function));
}
