
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;
typedef int tOptDesc ;


 int EXIT_SUCCESS ;
 int UNUSED_ARG (int *) ;
 char* Version ;
 int exit (int ) ;
 int fflush (int ) ;
 int printf (char*,char*) ;
 int stdout ;

void
ntpOptionPrintVersion(
 tOptions * pOpts,
 tOptDesc * pOD
 )
{
 UNUSED_ARG(pOpts);
 UNUSED_ARG(pOD);

 printf("%s\n", Version);
 fflush(stdout);
 exit(EXIT_SUCCESS);
}
