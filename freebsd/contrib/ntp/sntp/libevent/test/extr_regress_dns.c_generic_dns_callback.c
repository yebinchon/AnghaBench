
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_dns_callback_result {int result; char type; int count; int ttl; size_t addrs_len; int * addrs_buf; int * addrs; } ;


 char DNS_IPv4_A ;
 char DNS_IPv6_AAAA ;
 char DNS_PTR ;
 int evdns_close_server_port (int *) ;
 int event_base_loopexit (int ,int *) ;
 int exit_base ;
 int * exit_port ;
 int memcpy (int *,void*,size_t) ;
 scalar_t__ n_replies_left ;
 int strlen (void*) ;

__attribute__((used)) static void
generic_dns_callback(int result, char type, int count, int ttl, void *addresses,
    void *arg)
{
 size_t len;
 struct generic_dns_callback_result *res = arg;
 res->result = result;
 res->type = type;
 res->count = count;
 res->ttl = ttl;

 if (type == DNS_IPv4_A)
  len = count * 4;
 else if (type == DNS_IPv6_AAAA)
  len = count * 16;
 else if (type == DNS_PTR)
  len = strlen(addresses)+1;
 else {
  res->addrs_len = len = 0;
  res->addrs = ((void*)0);
 }
 if (len) {
  res->addrs_len = len;
  if (len > 256)
   len = 256;
  memcpy(res->addrs_buf, addresses, len);
  res->addrs = res->addrs_buf;
 }

 --n_replies_left;
 if (n_replies_left == 0) {
  if (exit_port) {
   evdns_close_server_port(exit_port);
   exit_port = ((void*)0);
  } else
   event_base_loopexit(exit_base, ((void*)0));
 }
}
