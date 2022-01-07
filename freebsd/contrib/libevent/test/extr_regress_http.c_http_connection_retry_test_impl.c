
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void http_connection_retry_test_basic (void*,char*,int *,int) ;

__attribute__((used)) static void
http_connection_retry_test_impl(void *arg, int ssl)
{
 return http_connection_retry_test_basic(arg, "127.0.0.1", ((void*)0), ssl);
}
