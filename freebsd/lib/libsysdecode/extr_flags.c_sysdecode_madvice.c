
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int madvisebehav ;

const char *
sysdecode_madvice(int advice)
{

 return (lookup_value(madvisebehav, advice));
}
