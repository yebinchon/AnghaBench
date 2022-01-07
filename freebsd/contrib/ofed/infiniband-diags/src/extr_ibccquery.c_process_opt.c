
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int AF_INET6 ;
 int cckey ;
 int dgid ;
 int fprintf (int ,char*) ;
 int ibdiag_show_usage () ;
 int inet_pton (int ,char*,int *) ;
 int stderr ;
 int strtoull (char*,int ,int ) ;
 int with_grh ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 'c':
  cckey = (uint64_t) strtoull(optarg, 0, 0);
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
