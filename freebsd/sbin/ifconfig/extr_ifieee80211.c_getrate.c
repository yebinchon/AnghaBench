
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double atof (char const*) ;
 int errx (int,char*,char const*) ;

__attribute__((used)) static int
getrate(const char *val, const char *tag)
{
 double v = atof(val);
 int rate;

 rate = (int) (2*v);
 if (rate != 2*v)
  errx(-1, "invalid %s rate (must be .5 Mb/s units)", tag);
 return rate;
}
