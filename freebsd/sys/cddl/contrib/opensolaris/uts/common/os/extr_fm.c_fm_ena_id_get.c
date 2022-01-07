
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ENA_FMT1_ID_MASK ;
 int ENA_FMT1_ID_SHFT ;
 int ENA_FMT2_ID_MASK ;
 int ENA_FMT2_ID_SHFT ;
 int ENA_FORMAT (int) ;



uint64_t
fm_ena_id_get(uint64_t ena)
{
 uint64_t id;

 switch (ENA_FORMAT(ena)) {
 case 129:
  id = (ena & ENA_FMT1_ID_MASK) >> ENA_FMT1_ID_SHFT;
  break;
 case 128:
  id = (ena & ENA_FMT2_ID_MASK) >> ENA_FMT2_ID_SHFT;
  break;
 default:
  id = 0;
 }

 return (id);
}
