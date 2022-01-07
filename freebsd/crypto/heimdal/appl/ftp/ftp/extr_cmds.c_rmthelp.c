
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int command (char*,char*) ;
 int verbose ;

void
rmthelp(int argc, char **argv)
{
 int oldverbose = verbose;

 verbose = 1;
 command(argc == 1 ? "HELP" : "HELP %s", argv[1]);
 verbose = oldverbose;
}
