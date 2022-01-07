
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct as3722_reg_sc {int base_sc; } ;


 int AS3722_FUSE7 ;
 int AS3722_FUSE7_SD0_LOW_VOLTAGE ;
 int RD1 (int ,int ,int*) ;

__attribute__((used)) static bool
as3722_sd0_is_low_voltage(struct as3722_reg_sc *sc)
{
 uint8_t val;
 int rv;

 rv = RD1(sc->base_sc, AS3722_FUSE7, &val);
 if (rv != 0)
  return (rv);
 return (val & AS3722_FUSE7_SD0_LOW_VOLTAGE ? 1 : 0);
}
