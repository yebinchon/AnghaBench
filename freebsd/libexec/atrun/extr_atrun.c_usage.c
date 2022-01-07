
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int LOG_ERR ;
 scalar_t__ debug ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
usage(void)
{
    if (debug)
 fprintf(stderr, "usage: atrun [-l load_avg] [-d]\n");
    else
 syslog(LOG_ERR, "usage: atrun [-l load_avg] [-d]");

    exit(EXIT_FAILURE);
}
