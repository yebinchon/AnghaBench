
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kldunloadfflags ;
 char const* lookup_value (int ,int) ;

const char *
sysdecode_kldunload_flags(int flags)
{

 return (lookup_value(kldunloadfflags, flags));
}
