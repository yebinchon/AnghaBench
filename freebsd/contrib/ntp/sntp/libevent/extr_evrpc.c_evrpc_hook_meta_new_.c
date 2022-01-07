
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_hook_meta {int * evcon; int meta_data; } ;


 int EVUTIL_ASSERT (int ) ;
 int TAILQ_INIT (int *) ;
 struct evrpc_hook_meta* mm_malloc (int) ;

__attribute__((used)) static struct evrpc_hook_meta *
evrpc_hook_meta_new_(void)
{
 struct evrpc_hook_meta *ctx;
 ctx = mm_malloc(sizeof(struct evrpc_hook_meta));
 EVUTIL_ASSERT(ctx != ((void*)0));

 TAILQ_INIT(&ctx->meta_data);
 ctx->evcon = ((void*)0);

 return (ctx);
}
