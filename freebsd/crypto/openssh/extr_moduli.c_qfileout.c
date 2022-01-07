
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
typedef int FILE ;
typedef int BIGNUM ;


 int BN_print_fp (int *,int *) ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 struct tm* gmtime (int *) ;
 int time (int *) ;

__attribute__((used)) static int
qfileout(FILE * ofile, u_int32_t otype, u_int32_t otests, u_int32_t otries,
    u_int32_t osize, u_int32_t ogenerator, BIGNUM * omodulus)
{
 struct tm *gtm;
 time_t time_now;
 int res;

 time(&time_now);
 gtm = gmtime(&time_now);

 res = fprintf(ofile, "%04d%02d%02d%02d%02d%02d %u %u %u %u %x ",
     gtm->tm_year + 1900, gtm->tm_mon + 1, gtm->tm_mday,
     gtm->tm_hour, gtm->tm_min, gtm->tm_sec,
     otype, otests, otries, osize, ogenerator);

 if (res < 0)
  return (-1);

 if (BN_print_fp(ofile, omodulus) < 1)
  return (-1);

 res = fprintf(ofile, "\n");
 fflush(ofile);

 return (res > 0 ? 0 : -1);
}
