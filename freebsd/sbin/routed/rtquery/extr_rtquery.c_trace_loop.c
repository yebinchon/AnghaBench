
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in {int sin_len; scalar_t__ sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int myaddr ;
struct TYPE_2__ {int rip_vers; } ;


 int AF_INET ;
 scalar_t__ EADDRINUSE ;
 scalar_t__ IPPORT_RESERVED ;
 TYPE_1__ OMSG ;
 int RIPv1 ;
 int RIPv2 ;
 scalar_t__ bind (int ,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ geteuid () ;
 void* htons (scalar_t__) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ ntohs (scalar_t__) ;
 scalar_t__ out (int ) ;
 int perror (char*) ;
 scalar_t__ ripv2 ;
 int soc ;
 int stderr ;

__attribute__((used)) static void
trace_loop(char *argv[])
{
 struct sockaddr_in myaddr;
 int res;

 if (geteuid() != 0) {
  (void)fprintf(stderr, "-t requires UID 0\n");
  exit(1);
 }

 if (ripv2) {
  OMSG.rip_vers = RIPv2;
 } else {
  OMSG.rip_vers = RIPv1;
 }

 memset(&myaddr, 0, sizeof(myaddr));
 myaddr.sin_family = AF_INET;



 myaddr.sin_port = htons(IPPORT_RESERVED-1);
 while (bind(soc, (struct sockaddr *)&myaddr, sizeof(myaddr)) < 0) {
  if (errno != EADDRINUSE
      || myaddr.sin_port == 0) {
   perror("bind");
   exit(2);
  }
  myaddr.sin_port = htons(ntohs(myaddr.sin_port)-1);
 }

 res = 1;
 while (*argv != ((void*)0)) {
  if (out(*argv++) <= 0)
   res = 0;
 }
 exit(res);
}
