
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_thread_ctx {int dummy; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 struct mg_thread_ctx* HEIMDAL_getspecific (int ) ;
 int HEIMDAL_key_create (int *,int ,int) ;
 int HEIMDAL_setspecific (int ,struct mg_thread_ctx*,int) ;
 struct mg_thread_ctx* calloc (int,int) ;
 int context_key ;
 int context_mutex ;
 int created_key ;
 int destroy_context ;
 int free (struct mg_thread_ctx*) ;

__attribute__((used)) static struct mg_thread_ctx *
_gss_mechglue_thread(void)
{
    struct mg_thread_ctx *ctx;
    int ret = 0;

    HEIMDAL_MUTEX_lock(&context_mutex);

    if (!created_key) {
 HEIMDAL_key_create(&context_key, destroy_context, ret);
 if (ret) {
     HEIMDAL_MUTEX_unlock(&context_mutex);
     return ((void*)0);
 }
 created_key = 1;
    }
    HEIMDAL_MUTEX_unlock(&context_mutex);

    ctx = HEIMDAL_getspecific(context_key);
    if (ctx == ((void*)0)) {

 ctx = calloc(1, sizeof(*ctx));
 if (ctx == ((void*)0))
     return ((void*)0);
 HEIMDAL_setspecific(context_key, ctx, ret);
 if (ret) {
     free(ctx);
     return ((void*)0);
 }
    }
    return ctx;
}
