
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEV_NORMAL ;
 int test_bufferevent_impl (int ,int ) ;

__attribute__((used)) static void test_bufferevent_flush_normal(void) { test_bufferevent_impl(0, BEV_NORMAL); }
