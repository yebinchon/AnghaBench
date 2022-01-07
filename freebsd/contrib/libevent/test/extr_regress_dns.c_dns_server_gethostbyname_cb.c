
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct in6_addr {int s6_addr; } ;
typedef int buf ;


 int AF_INET6 ;
 int DNS_ERR_CANCEL ;
 int DNS_ERR_NONE ;



 int INET6_ADDRSTRLEN ;
 int dns_got_cancel ;
 scalar_t__ dns_ok ;
 int event_loopexit (int *) ;
 char* evutil_inet_ntop (int ,struct in6_addr*,char*,int) ;
 int htonl (int) ;
 char* inet_ntoa (struct in_addr) ;
 int memcmp (int *,char*,int) ;
 int n_server_responses ;
 int printf (char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
dns_server_gethostbyname_cb(int result, char type, int count, int ttl,
    void *addresses, void *arg)
{
 if (result == DNS_ERR_CANCEL) {
  if (arg != (void*)(char*)90909) {
   printf("Unexpected cancelation");
   dns_ok = 0;
  }
  dns_got_cancel = 1;
  goto out;
 }
 if (result != DNS_ERR_NONE) {
  printf("Unexpected result %d. ", result);
  dns_ok = 0;
  goto out;
 }
 if (count != 1) {
  printf("Unexpected answer count %d. ", count);
  dns_ok = 0;
  goto out;
 }
 switch (type) {
 case 130: {
  struct in_addr *in_addrs = addresses;
  if (in_addrs[0].s_addr != htonl(0xc0a80b0bUL) || ttl != 12345) {
   printf("Bad IPv4 response \"%s\" %d. ",
     inet_ntoa(in_addrs[0]), ttl);
   dns_ok = 0;
   goto out;
  }
  break;
 }
 case 129: {
  break;
 }
 case 128: {
  char **addrs = addresses;
  if (arg != (void*)6) {
   if (strcmp(addrs[0], "ZZ.EXAMPLE.COM") ||
       ttl != 54321) {
    printf("Bad PTR response \"%s\" %d. ",
        addrs[0], ttl);
    dns_ok = 0;
    goto out;
   }
  } else {
   if (strcmp(addrs[0], "ZZ-INET6.EXAMPLE.COM") ||
       ttl != 54322) {
    printf("Bad ipv6 PTR response \"%s\" %d. ",
        addrs[0], ttl);
    dns_ok = 0;
    goto out;
   }
  }
  break;
 }
 default:
  printf("Bad response type %d. ", type);
  dns_ok = 0;
 }
 out:
 if (++n_server_responses == 3) {
  event_loopexit(((void*)0));
 }
}
