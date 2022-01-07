
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int EX_USAGE ;
 int errx (int ,char*,char*) ;
 int optarg ;
 int strtol (int ,char**,int) ;

mode_t
a_mask(char *s)
{
 int done, rv;
 char *ep;

 done = 0;
 rv = -1;
 if (*s >= '0' && *s <= '7') {
  done = 1;
  rv = strtol(optarg, &ep, 8);
 }
 if (!done || rv < 0 || *ep)
  errx(EX_USAGE, "invalid file mode: %s", s);
 return (rv);
}
