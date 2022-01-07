
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int SM_TIME_DEFAULT ;
 int exit (int ) ;
 int sm_io_fprintf (int ,int ,char*) ;
 int smioerr ;

__attribute__((used)) static void
usage()
{
 (void) sm_io_fprintf(smioerr, SM_TIME_DEFAULT,
        "usage: rmail [-T] [-D domain] user ...\n");
 exit(EX_USAGE);
}
