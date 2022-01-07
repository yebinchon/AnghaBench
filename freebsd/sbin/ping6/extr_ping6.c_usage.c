
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr,



     "usage: ping6 [-"
     "aADd"



     "fHnNoOq"



     "vyY] "
     "[-b bufsiz] [-c count] [-e gateway]\n"
     "             [-I interface] [-i wait] [-k addrtype] [-l preload] "
     "[-m hoplimit]\n"
     "             [-p pattern]"



     " [-S sourceaddr] [-s packetsize]\n"
     "             [-t timeout] [-W waittime] [hops ...] host\n");
 exit(1);
}
