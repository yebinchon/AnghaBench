
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int allocator; scalar_t__ data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_5__ {char* uri; } ;
typedef TYPE_2__ request_context_t ;


 char const* apr_pstrcat (int ,char const*,char const*,int *) ;
 int serf_bucket_allocator_get_pool (int ) ;

void serf_bucket_request_set_root(
    serf_bucket_t *bucket,
    const char *root_url)
{
    request_context_t *ctx = (request_context_t *)bucket->data;


    if (ctx->uri[0] != '/')
        return;


    if (ctx->uri[1] == '\0')
        ctx->uri = root_url;
    else
        ctx->uri =
            apr_pstrcat(serf_bucket_allocator_get_pool(bucket->allocator),
                        root_url,
                        ctx->uri,
                        ((void*)0));
}
