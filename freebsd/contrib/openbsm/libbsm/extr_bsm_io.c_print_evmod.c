
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int FILE ;


 int AU_OFLAG_RAW ;
 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_evmod(FILE *fp, u_int16_t evmod, int oflags)
{
 if (oflags & AU_OFLAG_RAW)
  fprintf(fp, "%u", evmod);
 else
  fprintf(fp, "%u", evmod);
}
