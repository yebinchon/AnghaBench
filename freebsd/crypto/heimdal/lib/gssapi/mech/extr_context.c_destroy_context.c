
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_thread_ctx {int min_error; int maj_error; } ;
typedef int OM_uint32 ;


 int free (struct mg_thread_ctx*) ;
 int gss_release_buffer (int *,int *) ;

__attribute__((used)) static void
destroy_context(void *ptr)
{
    struct mg_thread_ctx *mg = ptr;
    OM_uint32 junk;

    if (mg == ((void*)0))
 return;

    gss_release_buffer(&junk, &mg->maj_error);
    gss_release_buffer(&junk, &mg->min_error);
    free(mg);
}
