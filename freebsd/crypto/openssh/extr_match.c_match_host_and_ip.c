
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addr_match_list (char const*,char const*) ;
 int match_hostname (char const*,char const*) ;

int
match_host_and_ip(const char *host, const char *ipaddr,
    const char *patterns)
{
 int mhost, mip;

 if ((mip = addr_match_list(ipaddr, patterns)) == -2)
  return -1;
 else if (host == ((void*)0) || ipaddr == ((void*)0) || mip == -1)
  return 0;


 if ((mhost = match_hostname(host, patterns)) == -1)
  return 0;

 if (mhost == 0 && mip == 0)
  return 0;
 return 1;
}
