
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dns_port ;
 int dns_sock ;
 int evdns_close_server_port (int *) ;
 int evutil_closesocket (int) ;

void
regress_clean_dnsserver(void)
{
 if (dns_port) {
  evdns_close_server_port(dns_port);
  dns_port = ((void*)0);
 }
 if (dns_sock >= 0) {
  evutil_closesocket(dns_sock);
  dns_sock = -1;
 }
}
