
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ENA_FMT1_GEN_SHFT ;
 int ENA_FMT2_GEN_SHFT ;
 int ENA_FORMAT (int ) ;



uint64_t
fm_ena_increment(uint64_t ena)
{
 uint64_t new_ena;

 switch (ENA_FORMAT(ena)) {
 case 129:
  new_ena = ena + (1 << ENA_FMT1_GEN_SHFT);
  break;
 case 128:
  new_ena = ena + (1 << ENA_FMT2_GEN_SHFT);
  break;
 default:
  new_ena = 0;
 }

 return (new_ena);
}
