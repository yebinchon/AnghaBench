
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc {void* (* request_new ) (void*) ;void (* request_free ) (void*) ;int (* request_unmarshal ) (void*,struct evbuffer*) ;void* (* reply_new ) (void*) ;void (* reply_free ) (void*) ;int (* reply_complete ) (void*) ;void (* reply_marshal ) (struct evbuffer*,void*) ;void* reply_new_arg; void* request_new_arg; int * uri; } ;


 scalar_t__ mm_calloc (int,int) ;
 int mm_free (struct evrpc*) ;
 int * mm_strdup (char const*) ;

__attribute__((used)) static struct evrpc *
evrpc_register_object(const char *name,
    void *(*req_new)(void*), void *req_new_arg, void (*req_free)(void *),
    int (*req_unmarshal)(void *, struct evbuffer *),
    void *(*rpl_new)(void*), void *rpl_new_arg, void (*rpl_free)(void *),
    int (*rpl_complete)(void *),
    void (*rpl_marshal)(struct evbuffer *, void *))
{
 struct evrpc* rpc = (struct evrpc *)mm_calloc(1, sizeof(struct evrpc));
 if (rpc == ((void*)0))
  return (((void*)0));
 rpc->uri = mm_strdup(name);
 if (rpc->uri == ((void*)0)) {
  mm_free(rpc);
  return (((void*)0));
 }
 rpc->request_new = req_new;
 rpc->request_new_arg = req_new_arg;
 rpc->request_free = req_free;
 rpc->request_unmarshal = req_unmarshal;
 rpc->reply_new = rpl_new;
 rpc->reply_new_arg = rpl_new_arg;
 rpc->reply_free = rpl_free;
 rpc->reply_complete = rpl_complete;
 rpc->reply_marshal = rpl_marshal;
 return (rpc);
}
