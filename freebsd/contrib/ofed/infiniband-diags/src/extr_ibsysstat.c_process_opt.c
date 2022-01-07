
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET6 ;
 int dgid ;
 int fprintf (int ,char*) ;
 int ibdiag_show_usage () ;
 int inet_pton (int ,char*,int *) ;
 int oui ;
 int server ;
 int stderr ;
 int strtoul (char*,int ,int ) ;
 int with_grh ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 'o':
  oui = strtoul(optarg, 0, 0);
  break;
 case 'S':
  server++;
  break;
 case 25:
  if (!inet_pton(AF_INET6, optarg, &dgid)) {
   fprintf(stderr, "dgid format is wrong!\n");
   ibdiag_show_usage();
   return 1;
  }
  with_grh = 1;
  break;
 default:
  return -1;
 }
 return 0;
}
