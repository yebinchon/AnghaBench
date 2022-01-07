
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int nfssvcflags ;

const char *
sysdecode_nfssvc_flags(int flags)
{

 return (lookup_value(nfssvcflags, flags));
}
