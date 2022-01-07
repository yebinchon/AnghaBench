
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int* state; int buffer; } ;
typedef TYPE_1__ ldns_sha1_ctx ;


 unsigned int LDNS_SHA1_DIGEST_LENGTH ;
 int ldns_sha1_transform (int*,int ) ;
 int ldns_sha1_update (TYPE_1__*,unsigned char*,int) ;

void
ldns_sha1_final(unsigned char digest[LDNS_SHA1_DIGEST_LENGTH], ldns_sha1_ctx *context)
{
    unsigned int i;
    unsigned char finalcount[8];

    for (i = 0; i < 8; i++) {
        finalcount[i] = (unsigned char)((context->count >>
            ((7 - (i & 7)) * 8)) & 255);
    }
    ldns_sha1_update(context, (unsigned char *)"\200", 1);
    while ((context->count & 504) != 448) {
        ldns_sha1_update(context, (unsigned char *)"\0", 1);
    }
    ldns_sha1_update(context, finalcount, 8);

    if (digest != ((void*)0))
        for (i = 0; i < LDNS_SHA1_DIGEST_LENGTH; i++) {
            digest[i] = (unsigned char)((context->state[i >> 2] >>
                ((3 - (i & 3)) * 8)) & 255);
      }



}
