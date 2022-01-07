
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_hooks_ {int pause_requests; } ;
struct evrpc_hook_ctx {void (* cb ) (void*,int) ;void* ctx; } ;


 int TAILQ_INSERT_TAIL (int *,struct evrpc_hook_ctx*,int ) ;
 struct evrpc_hook_ctx* mm_malloc (int) ;
 int next ;

__attribute__((used)) static int
evrpc_pause_request(void *vbase, void *ctx,
    void (*cb)(void *, enum EVRPC_HOOK_RESULT))
{
 struct evrpc_hooks_ *base = vbase;
 struct evrpc_hook_ctx *pause = mm_malloc(sizeof(*pause));
 if (pause == ((void*)0))
  return (-1);

 pause->ctx = ctx;
 pause->cb = cb;

 TAILQ_INSERT_TAIL(&base->pause_requests, pause, next);
 return (0);
}
