
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void dns_search_test_impl (void*,int ) ;

__attribute__((used)) static void
dns_search_test(void *arg)
{
 return dns_search_test_impl(arg, 0);
}
