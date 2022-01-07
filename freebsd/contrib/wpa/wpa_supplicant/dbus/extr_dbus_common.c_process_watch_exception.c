
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENT_TYPE_EXCEPTION ;
 int process_watch (void*,void*,int ) ;

__attribute__((used)) static void process_watch_exception(int sock, void *eloop_ctx, void *sock_ctx)
{
 process_watch(eloop_ctx, sock_ctx, EVENT_TYPE_EXCEPTION);
}
