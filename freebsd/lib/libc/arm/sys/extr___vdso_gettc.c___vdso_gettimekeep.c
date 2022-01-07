
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdso_timekeep {int dummy; } ;


 int AT_TIMEKEEP ;
 int _elf_aux_info (int ,struct vdso_timekeep**,int) ;

int
__vdso_gettimekeep(struct vdso_timekeep **tk)
{

 return (_elf_aux_info(AT_TIMEKEEP, tk, sizeof(*tk)));
}
