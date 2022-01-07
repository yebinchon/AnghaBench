
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ENA_FMT1_TIME_MASK ;
 int ENA_FMT1_TIME_SHFT ;
 int ENA_FMT2_TIME_MASK ;
 int ENA_FMT2_TIME_SHFT ;
 int ENA_FORMAT (int) ;



uint64_t
fm_ena_time_get(uint64_t ena)
{
 uint64_t time;

 switch (ENA_FORMAT(ena)) {
 case 129:
  time = (ena & ENA_FMT1_TIME_MASK) >> ENA_FMT1_TIME_SHFT;
  break;
 case 128:
  time = (ena & ENA_FMT2_TIME_MASK) >> ENA_FMT2_TIME_SHFT;
  break;
 default:
  time = 0;
 }

 return (time);
}
