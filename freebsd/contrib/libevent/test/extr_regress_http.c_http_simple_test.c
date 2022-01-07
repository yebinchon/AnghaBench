
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void http_simple_test_impl (void*,int ,int ) ;

__attribute__((used)) static void http_simple_test(void *arg)
{ return http_simple_test_impl(arg, 0, 0); }
