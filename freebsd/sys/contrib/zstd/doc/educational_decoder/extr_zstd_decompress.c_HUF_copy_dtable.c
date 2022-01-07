
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t max_bits; void* num_bits; void* symbols; } ;
typedef TYPE_1__ HUF_dtable ;


 int BAD_ALLOC () ;
 void* malloc (size_t const) ;
 int memcpy (void*,void*,size_t const) ;
 int memset (TYPE_1__* const,int ,int) ;

__attribute__((used)) static void HUF_copy_dtable(HUF_dtable *const dst,
                            const HUF_dtable *const src) {
    if (src->max_bits == 0) {
        memset(dst, 0, sizeof(HUF_dtable));
        return;
    }

    const size_t size = (size_t)1 << src->max_bits;
    dst->max_bits = src->max_bits;

    dst->symbols = malloc(size);
    dst->num_bits = malloc(size);
    if (!dst->symbols || !dst->num_bits) {
        BAD_ALLOC();
    }

    memcpy(dst->symbols, src->symbols, size);
    memcpy(dst->num_bits, src->num_bits, size);
}
