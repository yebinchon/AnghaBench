
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int umtxop ;

const char *
sysdecode_umtx_op(int op)
{

 return (lookup_value(umtxop, op));
}
