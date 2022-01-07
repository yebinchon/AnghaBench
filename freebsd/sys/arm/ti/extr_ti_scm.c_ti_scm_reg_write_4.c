
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ENXIO ;
 int ti_scm_sc ;
 int ti_scm_write_4 (int ,int ,int ) ;

int
ti_scm_reg_write_4(uint32_t reg, uint32_t val)
{
 if (!ti_scm_sc)
  return (ENXIO);

 ti_scm_write_4(ti_scm_sc, reg, val);
 return (0);
}
