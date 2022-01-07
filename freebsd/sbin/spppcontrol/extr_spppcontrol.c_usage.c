
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n",
 "usage: spppcontrol [-v] ifname [{my|his}auth{proto|name|secret}=...]",
 "       spppcontrol [-v] ifname callin|always");
 exit(EX_USAGE);
}
