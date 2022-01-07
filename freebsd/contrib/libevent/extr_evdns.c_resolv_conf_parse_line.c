
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int DNS_OPTION_NAMESERVERS ;
 int DNS_OPTION_SEARCH ;
 void* NEXT_TOKEN ;
 int evdns_base_nameserver_ip_add (struct evdns_base*,char const* const) ;
 int evdns_base_set_option_impl (struct evdns_base*,char const*,char const*,int) ;
 int search_postfix_add (struct evdns_base*,char const*) ;
 int search_postfix_clear (struct evdns_base*) ;
 int search_reverse (struct evdns_base*) ;
 char* strchr (char const*,char) ;
 int strcmp (char* const,char*) ;
 char* strtok_r (char* const,char const* const,char**) ;

__attribute__((used)) static void
resolv_conf_parse_line(struct evdns_base *base, char *const start, int flags) {
 char *strtok_state;
 static const char *const delims = " \t";



 char *const first_token = strtok_r(start, delims, &strtok_state);
 ASSERT_LOCKED(base);
 if (!first_token) return;

 if (!strcmp(first_token, "nameserver") && (flags & DNS_OPTION_NAMESERVERS)) {
  const char *const nameserver = strtok_r(((void*)0), delims, &strtok_state);

  if (nameserver)
   evdns_base_nameserver_ip_add(base, nameserver);
 } else if (!strcmp(first_token, "domain") && (flags & DNS_OPTION_SEARCH)) {
  const char *const domain = strtok_r(((void*)0), delims, &strtok_state);
  if (domain) {
   search_postfix_clear(base);
   search_postfix_add(base, domain);
  }
 } else if (!strcmp(first_token, "search") && (flags & DNS_OPTION_SEARCH)) {
  const char *domain;
  search_postfix_clear(base);

  while ((domain = strtok_r(((void*)0), delims, &strtok_state))) {
   search_postfix_add(base, domain);
  }
  search_reverse(base);
 } else if (!strcmp(first_token, "options")) {
  const char *option;
  while ((option = strtok_r(((void*)0), delims, &strtok_state))) {
   const char *val = strchr(option, ':');
   evdns_base_set_option_impl(base, option, val ? val+1 : "", flags);
  }
 }

}
