
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dohalt ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 (void)fprintf(stderr, dohalt ?
     "usage: halt [-clNnpq] [-k kernel]\n" :
     "usage: reboot [-cdlNnpqr] [-k kernel]\n");
 exit(1);
}
