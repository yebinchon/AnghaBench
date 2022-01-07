
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argbase ;
 int argbuf ;
 int errx (int,char*) ;
 int line ;
 scalar_t__ malloc (int) ;
 int margc ;
 char** margv ;
 int margvlen ;
 scalar_t__ realloc (char**,int) ;
 scalar_t__ slrflag ;
 int * slurpstring () ;
 int stringbase ;

void
makeargv(void)
{
 char **argp;

 argp = margv;
 stringbase = line;
 argbase = argbuf;
 slrflag = 0;
 for (margc = 0; ; margc++) {

  if (margc == margvlen) {
   int i;

   margv = (margvlen == 0)
    ? (char **)malloc(20 * sizeof(char *))
    : (char **)realloc(margv,
     (margvlen + 20)*sizeof(char *));
   if (margv == ((void*)0))
    errx(1, "cannot realloc argv array");
   for(i = margvlen; i < margvlen + 20; ++i)
    margv[i] = ((void*)0);
   margvlen += 20;
   argp = margv + margc;
  }

  if ((*argp++ = slurpstring()) == ((void*)0))
   break;
 }

}
