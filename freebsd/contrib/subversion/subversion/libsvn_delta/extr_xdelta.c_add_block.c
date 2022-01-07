
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blocks {size_t max; size_t data; int* flags; TYPE_1__* slots; } ;
typedef size_t apr_uint32_t ;
struct TYPE_2__ {scalar_t__ pos; size_t adlersum; } ;


 int MATCH_BLOCKSIZE ;
 scalar_t__ NO_POSITION ;
 size_t hash_flags (size_t) ;
 size_t hash_func (size_t) ;
 scalar_t__ memcmp (size_t,size_t,int ) ;

__attribute__((used)) static void
add_block(struct blocks *blocks, apr_uint32_t adlersum, apr_uint32_t pos)
{
  apr_uint32_t h = hash_func(adlersum) & blocks->max;


  for (; blocks->slots[h].pos != NO_POSITION; h = (h + 1) & blocks->max)
    if (blocks->slots[h].adlersum == adlersum)
      if (memcmp(blocks->data + blocks->slots[h].pos, blocks->data + pos,
                 MATCH_BLOCKSIZE) == 0)
        return;

  blocks->slots[h].adlersum = adlersum;
  blocks->slots[h].pos = pos;
  blocks->flags[hash_flags(adlersum)] |= 1 << (adlersum & 7);
}
