
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ns_samedomain (char const*,char const*) ;
 int ns_samename (char const*,char const*) ;

int
ns_subdomain(const char *a, const char *b) {
 return (ns_samename(a, b) != 1 && ns_samedomain(a, b));
}
