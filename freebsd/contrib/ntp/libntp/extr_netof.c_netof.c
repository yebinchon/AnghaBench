
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef int sockaddr_u ;


 int AF (int *) ;
 int COUNTOF (int *) ;
 scalar_t__ IN_CLASSB (int ) ;
 int IN_CLASSB_NET ;
 scalar_t__ IN_CLASSC (int ) ;
 int IN_CLASSC_NET ;
 scalar_t__ IS_IPV4 (int *) ;
 scalar_t__ IS_IPV6 (int *) ;
 int LOG_ERR ;
 int * NSRCADR6 (int *) ;
 int SET_ADDR4 (int *,int ) ;
 int SRCADR (int *) ;
 int exit (int) ;
 int memcpy (int *,int *,int) ;
 int msyslog (int ,char*,int ) ;
 int zero_mem (int *,int) ;

sockaddr_u *
netof(
 sockaddr_u *hostaddr
 )
{
 static sockaddr_u netofbuf[8];
 static int next_netofbuf;
 u_int32 netnum;
 sockaddr_u * netaddr;

 netaddr = &netofbuf[next_netofbuf];
 next_netofbuf = (next_netofbuf + 1) % COUNTOF(netofbuf);

 memcpy(netaddr, hostaddr, sizeof(*netaddr));

 if (IS_IPV4(netaddr)) {
  netnum = SRCADR(netaddr);






  if (IN_CLASSC(netnum))
   netnum &= IN_CLASSC_NET;
  else if (IN_CLASSB(netnum))
   netnum &= IN_CLASSB_NET;

  SET_ADDR4(netaddr, netnum);

 } else if (IS_IPV6(netaddr))

  zero_mem(&NSRCADR6(netaddr)[8], 8);







 return netaddr;
}
