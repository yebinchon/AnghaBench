
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int idtypes ;
 char const* lookup_value (int ,int) ;

const char *
sysdecode_idtype(int idtype)
{

 return (lookup_value(idtypes, idtype));
}
