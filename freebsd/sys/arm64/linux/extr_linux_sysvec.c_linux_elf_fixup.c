
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_params {int dummy; } ;
typedef int register_t ;


 int LIN_SDT_PROBE0 (int ,int (*) (int **,struct image_params*),int ) ;
 int sysvec ;
 int todo ;

__attribute__((used)) static int
linux_elf_fixup(register_t **stack_base, struct image_params *imgp)
{

 LIN_SDT_PROBE0(sysvec, linux_elf_fixup, todo);

 return (0);
}
