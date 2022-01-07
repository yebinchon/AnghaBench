
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int count; unsigned char const* buffer; int state; } ;
typedef TYPE_1__ ldns_sha1_ctx ;


 int ldns_sha1_transform (int ,unsigned char const*) ;
 int memmove (unsigned char const*,unsigned char const*,unsigned int) ;

void
ldns_sha1_update(ldns_sha1_ctx *context, const unsigned char *data, unsigned int len)
{
    unsigned int i;
    unsigned int j;

    j = (unsigned)(uint32_t)((context->count >> 3) & 63);
    context->count += (len << 3);
    if ((j + len) > 63) {
        memmove(&context->buffer[j], data, (i = 64 - j));
        ldns_sha1_transform(context->state, context->buffer);
        for ( ; i + 63 < len; i += 64) {
            ldns_sha1_transform(context->state, &data[i]);
        }
        j = 0;
    }
    else i = 0;
    memmove(&context->buffer[j], &data[i], len - i);
}
