
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct event_base {int dummy; } ;
typedef int buf ;


 int AF_INET6 ;
 int DNS_ERR_NONE ;
 int DNS_ERR_TIMEOUT ;



 int INET6_ADDRSTRLEN ;
 int TT_BLATHER (char*) ;
 char dns_err ;
 char dns_ok ;
 int errno ;
 int event_base_loopexit (struct event_base*,int *) ;
 int event_loopexit (int *) ;
 char* evutil_inet_ntop (int ,struct in6_addr*,char*,int) ;
 int inet_ntoa (struct in_addr) ;
 int printf (char*,...) ;
 int strerror (int ) ;

__attribute__((used)) static void
dns_gethostbyname_cb(int result, char type, int count, int ttl,
    void *addresses, void *arg)
{
 dns_ok = dns_err = 0;

 if (result == DNS_ERR_TIMEOUT) {
  printf("[Timed out] ");
  dns_err = result;
  goto out;
 }

 if (result != DNS_ERR_NONE) {
  printf("[Error code %d] ", result);
  goto out;
 }

 TT_BLATHER(("type: %d, count: %d, ttl: %d: ", type, count, ttl));

 switch (type) {
 case 129: {
  break;
 }
 case 130: {
  struct in_addr *in_addrs = addresses;
  int i;

  if (ttl < 0)
   goto out;
  for (i = 0; i < count; ++i)
   TT_BLATHER(("%s ", inet_ntoa(in_addrs[i])));
  break;
 }
 case 128:

  if (count != 1)
   goto out;

  TT_BLATHER(("%s ", *(char **)addresses));
  break;
 default:
  goto out;
 }

 dns_ok = type;

out:
 if (arg == ((void*)0))
  event_loopexit(((void*)0));
 else
  event_base_loopexit((struct event_base *)arg, ((void*)0));
}
