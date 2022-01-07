
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_bufferevent_filters_impl (int,int) ;

__attribute__((used)) static void test_bufferevent_pair_filters_disable(void)
{ test_bufferevent_filters_impl(1, 1); }
