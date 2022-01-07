
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

 fprintf(stderr, "usage: %s create [-v] [-o <ro|wo|rw>] "
     "[-s sectorsize] [-t timeout] [-u unit] <path>\n", getprogname());
 fprintf(stderr, "       %s rescue [-v] [-o <ro|wo|rw>] <-u unit> "
     "<path>\n", getprogname());
 fprintf(stderr, "       %s destroy [-f] <-u unit>\n", getprogname());
 fprintf(stderr, "       %s list [-v] [-u unit]\n", getprogname());
 exit(EXIT_FAILURE);
}
