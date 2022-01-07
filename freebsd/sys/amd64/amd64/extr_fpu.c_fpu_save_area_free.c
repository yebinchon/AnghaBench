
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savefpu {int dummy; } ;


 int fpu_save_area_zone ;
 int uma_zfree (int ,struct savefpu*) ;

void
fpu_save_area_free(struct savefpu *fsa)
{

 uma_zfree(fpu_save_area_zone, fsa);
}
