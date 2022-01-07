
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ntpOptionProcess (int *,int,char**) ;
 int ntpdOptions ;

void
parse_cmdline_opts(
 int * pargc,
 char ***pargv
 )
{
 static int parsed;
 static int optct;

 if (!parsed)
  optct = ntpOptionProcess(&ntpdOptions, *pargc, *pargv);

 parsed = 1;

 *pargc -= optct;
 *pargv += optct;
}
