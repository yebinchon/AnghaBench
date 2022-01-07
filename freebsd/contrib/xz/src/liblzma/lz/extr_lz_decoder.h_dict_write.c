
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ full; int limit; int buf; } ;
typedef TYPE_1__ lzma_dict ;


 scalar_t__ lzma_bufcpy (int const*,size_t*,size_t,int ,scalar_t__*,int ) ;

__attribute__((used)) static inline void
dict_write(lzma_dict *restrict dict, const uint8_t *restrict in,
  size_t *restrict in_pos, size_t in_size,
  size_t *restrict left)
{







 if (in_size - *in_pos > *left)
  in_size = *in_pos + *left;

 *left -= lzma_bufcpy(in, in_pos, in_size,
   dict->buf, &dict->pos, dict->limit);

 if (dict->pos > dict->full)
  dict->full = dict->pos;

 return;
}
