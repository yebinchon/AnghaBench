
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dns_port ;
 scalar_t__ dns_sock ;
 int evdns_close_server_port (scalar_t__) ;
 int evutil_closesocket (scalar_t__) ;

void
regress_clean_dnsserver(void)
{
 if (dns_port)
  evdns_close_server_port(dns_port);
 if (dns_sock >= 0)
  evutil_closesocket(dns_sock);
}
