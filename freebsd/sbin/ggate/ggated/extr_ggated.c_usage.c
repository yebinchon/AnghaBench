
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr, "usage: %s [-nv] [-a address] [-F pidfile] [-p port] "
     "[-R rcvbuf] [-S sndbuf] [exports file]\n", getprogname());
 exit(EXIT_FAILURE);
}
