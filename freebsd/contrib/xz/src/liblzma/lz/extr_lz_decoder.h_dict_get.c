
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int const pos; int const size; int * buf; } ;
typedef TYPE_1__ lzma_dict ;



__attribute__((used)) static inline uint8_t
dict_get(const lzma_dict *const dict, const uint32_t distance)
{
 return dict->buf[dict->pos - distance - 1
   + (distance < dict->pos ? 0 : dict->size)];
}
