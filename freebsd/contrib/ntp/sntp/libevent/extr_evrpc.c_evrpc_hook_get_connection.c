
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evrpc_request_wrapper {TYPE_1__* hook_meta; } ;
struct evhttp_connection {int dummy; } ;
struct TYPE_2__ {struct evhttp_connection* evcon; } ;



struct evhttp_connection *
evrpc_hook_get_connection(void *ctx)
{
 struct evrpc_request_wrapper *req = ctx;
 return (req->hook_meta != ((void*)0) ? req->hook_meta->evcon : ((void*)0));
}
