
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_opt_t ;
typedef int FILE ;


 scalar_t__ getConfig (int *,char*,char**,int*) ;
 int parseArgs (int,char**,int *) ;
 int puke (int *) ;
 scalar_t__ vflag ;

void
parseConfig(FILE *fd, char *key, isc_opt_t *op)
{
     char *Ar[256];
     int cc;

     cc = 256;
     if(getConfig(fd, key, Ar, &cc))
   parseArgs(cc, Ar, op);
     if(vflag)
   puke(op);
}
