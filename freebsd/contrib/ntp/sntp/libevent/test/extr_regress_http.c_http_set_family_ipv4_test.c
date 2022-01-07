
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int http_connection_test_ (void*,int ,char*,int *,int ,int ) ;

__attribute__((used)) static void
http_set_family_ipv4_test(void *arg)
{
 http_connection_test_(arg, 0, "127.0.0.1", ((void*)0), 0, AF_INET);
}
