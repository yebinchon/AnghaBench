
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ENA_FMT1_GEN_MASK ;
 int ENA_FMT1_GEN_SHFT ;
 int ENA_FMT2_GEN_MASK ;
 int ENA_FMT2_GEN_SHFT ;
 int ENA_FORMAT (int) ;



uint64_t
fm_ena_generation_get(uint64_t ena)
{
 uint64_t gen;

 switch (ENA_FORMAT(ena)) {
 case 129:
  gen = (ena & ENA_FMT1_GEN_MASK) >> ENA_FMT1_GEN_SHFT;
  break;
 case 128:
  gen = (ena & ENA_FMT2_GEN_MASK) >> ENA_FMT2_GEN_SHFT;
  break;
 default:
  gen = 0;
  break;
 }

 return (gen);
}
