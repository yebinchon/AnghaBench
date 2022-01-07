
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LPRINTF (char*,long,...) ;
 int USECSCALE ;
 int accum_drift ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fscanf (int *,char*,int*,int*) ;

__attribute__((used)) static void
read_drift(
    const char *drift_file
    )
{
 FILE *df;

 df = fopen(drift_file, "r");
 if (df != ((void*)0))
 {
  int idrift = 0, fdrift = 0;

  fscanf(df, "%4d.%03d", &idrift, &fdrift);
  fclose(df);
  LPRINTF("read_drift: %d.%03d ppm ", idrift, fdrift);

  accum_drift = idrift << USECSCALE;
  fdrift = (fdrift << USECSCALE) / 1000;
  accum_drift += fdrift & (1<<USECSCALE);
  LPRINTF("read_drift: drift_comp %ld ", (long int)accum_drift);
 }
}
