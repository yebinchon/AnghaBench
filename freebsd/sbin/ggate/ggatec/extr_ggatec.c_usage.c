
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

 fprintf(stderr, "usage: %s create [-nv] [-o <ro|wo|rw>] [-p port] "
     "[-q queue_size] [-R rcvbuf] [-S sndbuf] [-s sectorsize] "
     "[-t timeout] [-u unit] <host> <path>\n", getprogname());
 fprintf(stderr, "       %s rescue [-nv] [-o <ro|wo|rw>] [-p port] "
     "[-R rcvbuf] [-S sndbuf] <-u unit> <host> <path>\n", getprogname());
 fprintf(stderr, "       %s destroy [-f] <-u unit>\n", getprogname());
 fprintf(stderr, "       %s list [-v] [-u unit]\n", getprogname());
 exit(EXIT_FAILURE);
}
