
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint16_t ;
struct pt_cpu {void* stepping; void* model; int family; int vendor; } ;


 long UCHAR_MAX ;
 long USHRT_MAX ;
 int pcv_intel ;
 int pte_invalid ;
 long strtol (char const*,char**,int ) ;

int pt_cpu_parse(struct pt_cpu *cpu, const char *s)
{
 const char sep = '/';
 char *endptr;
 long family, model, stepping;

 if (!cpu || !s)
  return -pte_invalid;

 family = strtol(s, &endptr, 0);
 if (s == endptr || *endptr == '\0' || *endptr != sep)
  return -pte_invalid;

 if (family < 0 || family > USHRT_MAX)
  return -pte_invalid;


 s = endptr + 1;

 model = strtol(s, &endptr, 0);
 if (s == endptr || (*endptr != '\0' && *endptr != sep))
  return -pte_invalid;

 if (model < 0 || model > UCHAR_MAX)
  return -pte_invalid;

 if (*endptr == '\0')

  stepping = 0;
 else {

  s = endptr + 1;

  stepping = strtol(s, &endptr, 0);
  if (*endptr != '\0')
   return -pte_invalid;

  if (stepping < 0 || stepping > UCHAR_MAX)
   return -pte_invalid;
 }

 cpu->vendor = pcv_intel;
 cpu->family = (uint16_t) family;
 cpu->model = (uint8_t) model;
 cpu->stepping = (uint8_t) stepping;

 return 0;
}
