
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int ptraceop ;

const char *
sysdecode_ptrace_request(int request)
{

 return (lookup_value(ptraceop, request));
}
