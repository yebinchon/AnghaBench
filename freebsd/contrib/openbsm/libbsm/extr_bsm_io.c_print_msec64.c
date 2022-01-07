
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;
typedef int FILE ;


 int AU_OFLAG_RAW ;
 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
print_msec64(FILE *fp, u_int64_t msec, int oflags)
{

 msec &= 0xffffffff;
 if (oflags & AU_OFLAG_RAW)
  fprintf(fp, "%u", (u_int32_t)msec);
 else
  fprintf(fp, " + %u msec", (u_int32_t)msec);
}
