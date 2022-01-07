
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbstat {int* m_mtypes; } ;
typedef int mbstat ;


 int const CTL_KERN ;
 int const KERN_MBUF ;
 int const MBUF_STATS ;
 size_t MT_DATA ;
 int RL (int ) ;
 int __arraycount (int const*) ;
 int rump_sys___sysctl (int const*,int ,struct mbstat*,size_t*,int *,int ) ;

__attribute__((used)) static int
getmtdata(void)
{
 struct mbstat mbstat;
 size_t mbstatlen = sizeof(mbstat);
 const int mbstat_mib[] = { CTL_KERN, KERN_MBUF, MBUF_STATS };

 RL(rump_sys___sysctl(mbstat_mib, __arraycount(mbstat_mib),
     &mbstat, &mbstatlen, ((void*)0), 0));
 return mbstat.m_mtypes[MT_DATA];
}
