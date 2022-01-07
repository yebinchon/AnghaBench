
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* HOST_V4 ;
 char* HOST_V4MAPPED ;
 char* HOST_V6 ;
 char* PORT_V4 ;
 char* PORT_V4MAPPED ;
 char* PORT_V6 ;
 size_t TOTAL ;
 size_t atoi (int ) ;
 int debug ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 char* getprogname () ;
 int optarg ;
 int run (char const*,char const*,size_t,int,int) ;
 int stderr ;

int
main(int argc, char *argv[])
{
 const char *host, *port;
 int c;
 size_t n;
 bool conn, bug;

 host = HOST_V4;
 port = PORT_V4;
 n = TOTAL;
 bug = conn = 0;

 while ((c = getopt(argc, argv, "46bcdmn:")) != -1)
  switch (c) {
  case '4':
   host = HOST_V4;
   port = PORT_V4;
   break;
  case '6':
   host = HOST_V6;
   port = PORT_V6;
   break;
  case 'b':
   bug = 1;
   break;
  case 'c':
   conn = 1;
   break;
  case 'd':
   debug++;
   break;
  case 'm':
   host = HOST_V4MAPPED;
   port = PORT_V4MAPPED;
   break;
  case 'n':
   n = atoi(optarg);
   break;
  default:
   fprintf(stderr, "Usage: %s [-cdm46] [-n <tot>]",
       getprogname());
   return 1;
  }

 run(host, port, n, conn, bug);
 return 0;
}
