
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_msghdr {int rtm_msglen; } ;


 int AF_UNSPEC ;
 int CTL_NET ;
 scalar_t__ ENOMEM ;
 int EX_OSERR ;
 int NET_RT_IFLIST ;
 int PF_ROUTE ;
 int err (int ,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int nitems (int*) ;
 int print_rtmsg (struct rt_msghdr*,int ) ;
 int sleep (int) ;
 scalar_t__ sysctl (int*,int ,char*,size_t*,int *,int ) ;
 int warnx (char*) ;

__attribute__((used)) static void
interfaces(void)
{
 size_t needed;
 int mib[6];
 char *buf, *lim, *next, count = 0;
 struct rt_msghdr *rtm;

retry2:
 mib[0] = CTL_NET;
 mib[1] = PF_ROUTE;
 mib[2] = 0;
 mib[3] = AF_UNSPEC;
 mib[4] = NET_RT_IFLIST;
 mib[5] = 0;
 if (sysctl(mib, nitems(mib), ((void*)0), &needed, ((void*)0), 0) < 0)
  err(EX_OSERR, "route-sysctl-estimate");
 if ((buf = malloc(needed)) == ((void*)0))
  errx(EX_OSERR, "malloc failed");
 if (sysctl(mib, nitems(mib), buf, &needed, ((void*)0), 0) < 0) {
  if (errno == ENOMEM && count++ < 10) {
   warnx("Routing table grew, retrying");
   sleep(1);
   free(buf);
   goto retry2;
  }
  err(EX_OSERR, "actual retrieval of interface table");
 }
 lim = buf + needed;
 for (next = buf; next < lim; next += rtm->rtm_msglen) {
  rtm = (struct rt_msghdr *)(void *)next;
  print_rtmsg(rtm, rtm->rtm_msglen);
 }
 free(buf);
}
