
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;
typedef int address ;


 int evdns_base_free (struct evdns_base*,int ) ;
 int evdns_base_nameserver_ip_add (struct evdns_base*,char*) ;
 struct evdns_base* evdns_base_new (int ,int ) ;
 int evutil_snprintf (char*,int,char*,int ) ;
 int http_connection_retry_test_basic (void*,char*,struct evdns_base*,int) ;
 struct evdns_base* regress_dnsserver (int ,int *,int ) ;
 int search_table ;
 int tt_assert (struct evdns_base*) ;

__attribute__((used)) static void
http_connection_retry_conn_address_test_impl(void *arg, int ssl)
{
 struct basic_test_data *data = arg;
 ev_uint16_t portnum = 0;
 struct evdns_base *dns_base = ((void*)0);
 char address[64];

 tt_assert(regress_dnsserver(data->base, &portnum, search_table));
 dns_base = evdns_base_new(data->base, 0 );
 tt_assert(dns_base);



 evutil_snprintf(address, sizeof(address), "127.0.0.1:%d", portnum);
 evdns_base_nameserver_ip_add(dns_base, address);

 http_connection_retry_test_basic(arg, "localhost", dns_base, ssl);

 end:
 if (dns_base)
  evdns_base_free(dns_base, 0);

}
