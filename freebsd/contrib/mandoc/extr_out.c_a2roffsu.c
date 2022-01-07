
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roffsu {int unit; int scale; } ;
typedef enum roffscale { ____Placeholder_roffscale } roffscale ;


 int SCALE_BU ;
 int SCALE_CM ;
 int SCALE_EM ;
 int SCALE_EN ;
 int SCALE_FS ;
 int SCALE_IN ;
 int SCALE_MAX ;
 int SCALE_MM ;
 int SCALE_PC ;
 int SCALE_PT ;
 int SCALE_VS ;
 int strtod (char const*,char**) ;

const char *
a2roffsu(const char *src, struct roffsu *dst, enum roffscale def)
{
 char *endptr;

 dst->unit = def == SCALE_MAX ? SCALE_BU : def;
 dst->scale = strtod(src, &endptr);
 if (endptr == src)
  return ((void*)0);

 switch (*endptr++) {
 case 'c':
  dst->unit = SCALE_CM;
  break;
 case 'i':
  dst->unit = SCALE_IN;
  break;
 case 'f':
  dst->unit = SCALE_FS;
  break;
 case 'M':
  dst->unit = SCALE_MM;
  break;
 case 'm':
  dst->unit = SCALE_EM;
  break;
 case 'n':
  dst->unit = SCALE_EN;
  break;
 case 'P':
  dst->unit = SCALE_PC;
  break;
 case 'p':
  dst->unit = SCALE_PT;
  break;
 case 'u':
  dst->unit = SCALE_BU;
  break;
 case 'v':
  dst->unit = SCALE_VS;
  break;
 default:
  endptr--;
  if (SCALE_MAX == def)
   return ((void*)0);
  dst->unit = def;
  break;
 }
 return endptr;
}
