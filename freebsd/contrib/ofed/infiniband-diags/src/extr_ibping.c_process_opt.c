
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET6 ;
 void* count ;
 int dgid ;
 int flood ;
 int ibdiag_show_usage () ;
 int inet_pton (int ,char*,int *) ;
 void* oui ;
 int printf (char*) ;
 int server ;
 void* strtoul (char*,int ,int ) ;
 int with_grh ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 'c':
  count = strtoul(optarg, 0, 0);
  break;
 case 'f':
  flood++;
  break;
 case 'o':
  oui = strtoul(optarg, 0, 0);
  break;
 case 'S':
  server++;
  break;
 case 25:
  if (!inet_pton(AF_INET6, optarg, &dgid)) {
   printf("dgid format is wrong!\n");
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
