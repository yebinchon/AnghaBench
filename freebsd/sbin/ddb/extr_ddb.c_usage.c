
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{

 fprintf(stderr, "usage: ddb capture [-M core] [-N system] print\n");
 fprintf(stderr, "       ddb capture [-M core] [-N system] status\n");
 fprintf(stderr, "       ddb script scriptname\n");
 fprintf(stderr, "       ddb script scriptname=script\n");
 fprintf(stderr, "       ddb scripts\n");
 fprintf(stderr, "       ddb unscript scriptname\n");
 fprintf(stderr, "       ddb pathname\n");
 exit(EX_USAGE);
}
