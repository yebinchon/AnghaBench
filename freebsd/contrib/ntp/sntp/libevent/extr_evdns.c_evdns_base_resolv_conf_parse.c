
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int evdns_base_resolv_conf_parse_impl (struct evdns_base*,int,char const* const) ;

int
evdns_base_resolv_conf_parse(struct evdns_base *base, int flags, const char *const filename) {
 int res;
 EVDNS_LOCK(base);
 res = evdns_base_resolv_conf_parse_impl(base, flags, filename);
 EVDNS_UNLOCK(base);
 return res;
}
