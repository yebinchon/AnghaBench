
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {int dummy; } ;


 int generic_dns_callback (int,int ,int ,int ,int *,void*) ;

__attribute__((used)) static void
getaddrinfo_cb(int err, struct evutil_addrinfo *res, void *ptr)
{
 generic_dns_callback(err, 0, 0, 0, ((void*)0), ptr);
}
