
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ENXIO ;
 int versatile_scm_read_4 (int ,int ) ;
 int versatile_scm_sc ;

int
versatile_scm_reg_read_4(uint32_t reg, uint32_t *val)
{
 if (!versatile_scm_sc)
  return (ENXIO);

 *val = versatile_scm_read_4(versatile_scm_sc, reg);
 return (0);
}
