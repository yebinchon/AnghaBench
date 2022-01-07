
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int AF_LINK ;
 int AF_UNSPEC ;
 scalar_t__ feature_present (char*) ;

__attribute__((used)) static int
get_socket_domain(void)
{
 int sdom;

 sdom = AF_UNSPEC;
 if (sdom == AF_UNSPEC)
  sdom = AF_LINK;

 return (sdom);
}
