
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ ID_AA64MMFR1_PAN_NONE ;
 scalar_t__ ID_AA64MMFR1_PAN_VAL (int ) ;
 int READ_SPECIALREG (int ) ;
 int has_pan ;
 int id_aa64mmfr1_el1 ;

__attribute__((used)) static void
pan_setup(void)
{
 uint64_t id_aa64mfr1;

 id_aa64mfr1 = READ_SPECIALREG(id_aa64mmfr1_el1);
 if (ID_AA64MMFR1_PAN_VAL(id_aa64mfr1) != ID_AA64MMFR1_PAN_NONE)
  has_pan = 1;
}
