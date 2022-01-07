
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {TYPE_3__* last; TYPE_3__* list; } ;
typedef TYPE_2__ headers_context_t ;
struct TYPE_7__ {struct TYPE_7__* next; int header; } ;
typedef TYPE_3__ header_list_t ;


 scalar_t__ strcasecmp (int ,char const*) ;

void serf__bucket_headers_remove(serf_bucket_t *bucket, const char *header)
{
    headers_context_t *ctx = bucket->data;
    header_list_t *scan = ctx->list, *prev = ((void*)0);


    while (scan) {
        if (strcasecmp(scan->header, header) == 0) {
            if (prev) {
                prev->next = scan->next;
            } else {
                ctx->list = scan->next;
            }
            if (ctx->last == scan) {
                ctx->last = ((void*)0);
            }
        } else {
            prev = scan;
        }
        scan = scan->next;
    }
}
