
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dictionary {int pos; scalar_t__ full; int* buf; scalar_t__ end; } ;



__attribute__((used)) static inline uint32_t dict_get(const struct dictionary *dict, uint32_t dist)
{
 size_t offset = dict->pos - dist - 1;

 if (dist >= dict->pos)
  offset += dict->end;

 return dict->full > 0 ? dict->buf[offset] : 0;
}
