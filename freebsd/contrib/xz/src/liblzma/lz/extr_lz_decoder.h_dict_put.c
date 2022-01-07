
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ limit; scalar_t__ full; int * buf; } ;
typedef TYPE_1__ lzma_dict ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool
dict_put(lzma_dict *dict, uint8_t byte)
{
 if (unlikely(dict->pos == dict->limit))
  return 1;

 dict->buf[dict->pos++] = byte;

 if (dict->pos > dict->full)
  dict->full = dict->pos;

 return 0;
}
