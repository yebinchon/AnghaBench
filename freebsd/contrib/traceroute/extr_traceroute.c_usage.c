
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Fprintf (int ,char*,char*) ;
 int exit (int) ;
 char* prog ;
 int stderr ;

void
usage(void)
{
 extern char version[];

 Fprintf(stderr, "Version %s\n", version);
 Fprintf(stderr,
     "Usage: %s [-adDeFInrSvx] [-f first_ttl] [-g gateway] [-i iface]\n"
     "\t[-m max_ttl] [-p port] [-P proto] [-q nqueries] [-s src_addr]\n"
     "\t[-t tos] [-w waittime] [-A as_server] [-z pausemsecs] host [packetlen]\n", prog);
 exit(1);
}
