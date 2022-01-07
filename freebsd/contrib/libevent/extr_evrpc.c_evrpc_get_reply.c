
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_req_generic {void* reply; } ;



void *
evrpc_get_reply(struct evrpc_req_generic *req)
{
 return req->reply;
}
