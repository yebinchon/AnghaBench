
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {size_t limit; size_t pos; int full; int size; int * buf; } ;
typedef TYPE_1__ lzma_dict ;


 int assert (int) ;
 int dict_get (TYPE_1__*,scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memmove (int *,int *,scalar_t__) ;
 scalar_t__ my_min (size_t const,scalar_t__) ;
 int unlikely (int) ;

__attribute__((used)) static inline bool
dict_repeat(lzma_dict *dict, uint32_t distance, uint32_t *len)
{

 const size_t dict_avail = dict->limit - dict->pos;
 uint32_t left = my_min(dict_avail, *len);
 *len -= left;




 if (distance < left) {


  do {
   dict->buf[dict->pos] = dict_get(dict, distance);
   ++dict->pos;
  } while (--left > 0);

 } else if (distance < dict->pos) {

  memcpy(dict->buf + dict->pos,
    dict->buf + dict->pos - distance - 1,
    left);
  dict->pos += left;

 } else {



  assert(dict->full == dict->size);
  const uint32_t copy_pos
    = dict->pos - distance - 1 + dict->size;
  uint32_t copy_size = dict->size - copy_pos;

  if (copy_size < left) {
   memmove(dict->buf + dict->pos, dict->buf + copy_pos,
     copy_size);
   dict->pos += copy_size;
   copy_size = left - copy_size;
   memcpy(dict->buf + dict->pos, dict->buf, copy_size);
   dict->pos += copy_size;
  } else {
   memmove(dict->buf + dict->pos, dict->buf + copy_pos,
     left);
   dict->pos += left;
  }
 }


 if (dict->full < dict->pos)
  dict->full = dict->pos;

 return unlikely(*len != 0);
}
