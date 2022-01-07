
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hostinfo {int * addrs; } ;


 int freehostinfo (struct hostinfo*) ;
 struct hostinfo* gethostinfo (char*) ;

void
getaddr(register u_int32_t *ap, register char *hostname)
{
 register struct hostinfo *hi;

 hi = gethostinfo(hostname);
 *ap = hi->addrs[0];
 freehostinfo(hi);
}
