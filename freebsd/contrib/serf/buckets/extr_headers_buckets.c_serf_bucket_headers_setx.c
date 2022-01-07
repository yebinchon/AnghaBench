
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int allocator; TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_7__ {TYPE_3__* last; TYPE_3__* list; scalar_t__ cur_read; } ;
typedef TYPE_2__ headers_context_t ;
struct TYPE_8__ {char const* header; char const* value; struct TYPE_8__* next; int alloc_flags; void* value_size; void* header_size; } ;
typedef TYPE_3__ header_list_t ;
typedef void* apr_size_t ;


 int ALLOC_HEADER ;
 int ALLOC_VALUE ;
 int abort () ;
 void* serf_bstrmemdup (int ,char const*,void*) ;
 TYPE_3__* serf_bucket_mem_alloc (int ,int) ;

void serf_bucket_headers_setx(
    serf_bucket_t *bkt,
    const char *header, apr_size_t header_size, int header_copy,
    const char *value, apr_size_t value_size, int value_copy)
{
    headers_context_t *ctx = bkt->data;
    header_list_t *hdr;
    hdr = serf_bucket_mem_alloc(bkt->allocator, sizeof(*hdr));
    hdr->header_size = header_size;
    hdr->value_size = value_size;
    hdr->alloc_flags = 0;
    hdr->next = ((void*)0);

    if (header_copy) {
        hdr->header = serf_bstrmemdup(bkt->allocator, header, header_size);
        hdr->alloc_flags |= ALLOC_HEADER;
    }
    else {
        hdr->header = header;
    }

    if (value_copy) {
        hdr->value = serf_bstrmemdup(bkt->allocator, value, value_size);
        hdr->alloc_flags |= ALLOC_VALUE;
    }
    else {
        hdr->value = value;
    }


    if (ctx->last)
        ctx->last->next = hdr;
    else
        ctx->list = hdr;

    ctx->last = hdr;
}
