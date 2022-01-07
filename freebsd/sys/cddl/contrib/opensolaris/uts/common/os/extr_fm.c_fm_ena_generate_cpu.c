
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uchar_t ;
typedef int processorid_t ;


 int ENA_FMT1_CPUID_MASK ;
 int ENA_FMT1_CPUID_SHFT ;
 int ENA_FMT1_TIME_MASK ;
 int ENA_FMT1_TIME_SHFT ;
 int ENA_FMT2_TIME_MASK ;
 int ENA_FMT2_TIME_SHFT ;
 int ENA_FORMAT_MASK ;


 int gethrtime_waitfree () ;

uint64_t
fm_ena_generate_cpu(uint64_t timestamp, processorid_t cpuid, uchar_t format)
{
 uint64_t ena = 0;

 switch (format) {
 case 129:
  if (timestamp) {
   ena = (uint64_t)((format & ENA_FORMAT_MASK) |
       ((cpuid << ENA_FMT1_CPUID_SHFT) &
       ENA_FMT1_CPUID_MASK) |
       ((timestamp << ENA_FMT1_TIME_SHFT) &
       ENA_FMT1_TIME_MASK));
  } else {
   ena = (uint64_t)((format & ENA_FORMAT_MASK) |
       ((cpuid << ENA_FMT1_CPUID_SHFT) &
       ENA_FMT1_CPUID_MASK) |
       ((gethrtime_waitfree() << ENA_FMT1_TIME_SHFT) &
       ENA_FMT1_TIME_MASK));
  }
  break;
 case 128:
  ena = (uint64_t)((format & ENA_FORMAT_MASK) |
      ((timestamp << ENA_FMT2_TIME_SHFT) & ENA_FMT2_TIME_MASK));
  break;
 default:
  break;
 }

 return (ena);
}
