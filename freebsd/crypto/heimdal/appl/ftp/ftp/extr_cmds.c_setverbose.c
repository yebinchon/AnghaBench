
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int verbose ;

void
setverbose(int argc, char **argv)
{

 verbose = !verbose;
 printf("Verbose mode %s.\n", onoff(verbose));
 code = verbose;
}
