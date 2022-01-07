
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,char const*,long,...) ;
 int optarg ;
 long strtol (int ,char**,int) ;

__attribute__((used)) static long
numarg(const char *meaning, long vmin, long vmax)
{
 char *p;
 long val;

 val = strtol(optarg, &p, 10);
 if (*p)
  errx(1, "illegal %s -- %s", meaning, optarg);
 if (val < vmin || (vmax && val > vmax))
  errx(1, "%s must be between %ld and %ld", meaning, vmin, vmax);
 return (val);
}
