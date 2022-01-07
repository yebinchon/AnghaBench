
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evdns_base {TYPE_1__* global_search_state; int server_head; } ;
struct TYPE_2__ {scalar_t__ num_domains; } ;


 int DNS_OPTION_HOSTSFILE ;
 int DNS_OPTION_NAMESERVERS ;
 int DNS_OPTION_SEARCH ;
 int EVDNS_LOG_DEBUG ;
 int evdns_base_load_hosts (struct evdns_base*,char*) ;
 int evdns_base_nameserver_ip_add (struct evdns_base*,char*) ;
 char* evdns_get_default_hosts_filename () ;
 int evdns_resolv_set_defaults (struct evdns_base*,int) ;
 int evutil_read_file_ (char const* const,char**,size_t*,int ) ;
 int log (int ,char*,char const* const) ;
 int mm_free (char*) ;
 int resolv_conf_parse_line (struct evdns_base*,char*,int) ;
 int search_set_from_hostname (struct evdns_base*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
evdns_base_resolv_conf_parse_impl(struct evdns_base *base, int flags, const char *const filename) {
 size_t n;
 char *resolv;
 char *start;
 int err = 0;

 log(EVDNS_LOG_DEBUG, "Parsing resolv.conf file %s", filename);

 if (flags & DNS_OPTION_HOSTSFILE) {
  char *fname = evdns_get_default_hosts_filename();
  evdns_base_load_hosts(base, fname);
  if (fname)
   mm_free(fname);
 }

 if ((err = evutil_read_file_(filename, &resolv, &n, 0)) < 0) {
  if (err == -1) {

   evdns_resolv_set_defaults(base, flags);
   return 1;
  } else {
   return 2;
  }
 }

 start = resolv;
 for (;;) {
  char *const newline = strchr(start, '\n');
  if (!newline) {
   resolv_conf_parse_line(base, start, flags);
   break;
  } else {
   *newline = 0;
   resolv_conf_parse_line(base, start, flags);
   start = newline + 1;
  }
 }

 if (!base->server_head && (flags & DNS_OPTION_NAMESERVERS)) {

  evdns_base_nameserver_ip_add(base, "127.0.0.1");
  err = 6;
 }
 if (flags & DNS_OPTION_SEARCH && (!base->global_search_state || base->global_search_state->num_domains == 0)) {
  search_set_from_hostname(base);
 }

 mm_free(resolv);
 return err;
}
