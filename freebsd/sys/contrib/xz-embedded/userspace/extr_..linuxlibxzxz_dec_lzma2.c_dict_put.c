
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dictionary {scalar_t__ pos; scalar_t__ full; int * buf; } ;



__attribute__((used)) static inline void dict_put(struct dictionary *dict, uint8_t byte)
{
 dict->buf[dict->pos++] = byte;

 if (dict->full < dict->pos)
  dict->full = dict->pos;
}
