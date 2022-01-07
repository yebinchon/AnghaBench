
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int allocator; TYPE_2__* data; } ;
typedef TYPE_1__ serf_bucket_t ;
struct TYPE_6__ {TYPE_3__* list; } ;
typedef TYPE_2__ headers_context_t ;
struct TYPE_7__ {int value_size; char const* value; struct TYPE_7__* next; int header; } ;
typedef TYPE_3__ header_list_t ;
typedef int apr_size_t ;


 int ALLOC_VALUE ;
 int memcpy (char*,char const*,int) ;
 char* serf_bucket_mem_alloc (int ,int) ;
 int serf_bucket_mem_free (int ,void*) ;
 scalar_t__ strcasecmp (int ,char const*) ;

const char *serf_bucket_headers_get(
    serf_bucket_t *headers_bucket,
    const char *header)
{
    headers_context_t *ctx = headers_bucket->data;
    header_list_t *found = ctx->list;
    const char *val = ((void*)0);
    int value_size = 0;
    int val_alloc = 0;

    while (found) {
        if (strcasecmp(found->header, header) == 0) {
            if (val) {
                apr_size_t new_size = found->value_size + value_size + 1;
                char *new_val = serf_bucket_mem_alloc(headers_bucket->allocator,
                                                      new_size + 1);
                memcpy(new_val, val, value_size);
                new_val[value_size] = ',';
                memcpy(new_val + value_size + 1, found->value,
                       found->value_size);
                new_val[new_size] = '\0';

                if (val_alloc)
                    serf_bucket_mem_free(headers_bucket->allocator, (void*)val);
                val_alloc |= ALLOC_VALUE;
                val = new_val;
                value_size = new_size;
            }
            else {
                val = found->value;
                value_size = found->value_size;
            }
        }
        found = found->next;
    }

    return val;
}
