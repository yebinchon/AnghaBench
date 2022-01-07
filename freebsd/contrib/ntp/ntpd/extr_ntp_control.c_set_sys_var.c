
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_long ;


 int ext_sys_var ;
 int set_var (int *,char const*,int ,int ) ;

void
set_sys_var(
 const char *data,
 u_long size,
 u_short def
 )
{
 set_var(&ext_sys_var, data, size, def);
}
