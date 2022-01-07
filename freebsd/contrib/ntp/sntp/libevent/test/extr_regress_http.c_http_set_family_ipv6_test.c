
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET6 ;
 int http_ipv6_for_domain_test_impl (void*,int ) ;

__attribute__((used)) static void
http_set_family_ipv6_test(void *arg)
{
 http_ipv6_for_domain_test_impl(arg, AF_INET6);
}
