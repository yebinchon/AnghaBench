
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lio_listiomodes ;
 char const* lookup_value (int ,int) ;

const char *
sysdecode_lio_listio_mode(int mode)
{

 return (lookup_value(lio_listiomodes, mode));
}
