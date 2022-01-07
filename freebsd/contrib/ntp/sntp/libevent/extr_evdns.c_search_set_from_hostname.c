
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_base {int dummy; } ;
typedef int hostname ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int HOST_NAME_MAX ;
 scalar_t__ gethostname (char*,int) ;
 int search_postfix_add (struct evdns_base*,char*) ;
 int search_postfix_clear (struct evdns_base*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
search_set_from_hostname(struct evdns_base *base) {
 char hostname[HOST_NAME_MAX + 1], *domainname;

 ASSERT_LOCKED(base);
 search_postfix_clear(base);
 if (gethostname(hostname, sizeof(hostname))) return;
 domainname = strchr(hostname, '.');
 if (!domainname) return;
 search_postfix_add(base, domainname);
}
