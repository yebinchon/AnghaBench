
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{
 (void) fprintf(stderr,
     "usage: scp [-346BCpqrTv] [-c cipher] [-F ssh_config] [-i identity_file]\n"
     "           [-l limit] [-o ssh_option] [-P port] [-S program] source ... target\n");
 exit(1);
}
