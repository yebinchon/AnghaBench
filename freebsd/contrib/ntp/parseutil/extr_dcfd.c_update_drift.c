
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int FILE ;


 int LPRINTF (char*,int,...) ;
 int R_SHIFT (int,int) ;
 int USECSCALE ;
 int accum_drift ;
 int asctime (int ) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int,int,char,long,long,int ) ;
 int l_abs (long) ;
 int localtime (int *) ;

__attribute__((used)) static void
update_drift(
      const char *drift_file,
      long offset,
      time_t reftime
      )
{
 FILE *df;

 df = fopen(drift_file, "w");
 if (df != ((void*)0))
 {
  int idrift = R_SHIFT(accum_drift, USECSCALE);
  int fdrift = accum_drift & ((1<<USECSCALE)-1);

  LPRINTF("update_drift: drift_comp %ld ", (long int)accum_drift);
  fdrift = (fdrift * 1000) / (1<<USECSCALE);
  fprintf(df, "%4d.%03d %c%ld.%06ld %.24s\n", idrift, fdrift,
   (offset < 0) ? '-' : '+', (long int)(l_abs(offset) / 1000000),
   (long int)(l_abs(offset) % 1000000), asctime(localtime(&reftime)));
  fclose(df);
  LPRINTF("update_drift: %d.%03d ppm ", idrift, fdrift);
 }
}
