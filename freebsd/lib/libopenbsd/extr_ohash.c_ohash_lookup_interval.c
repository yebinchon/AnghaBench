
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int key_offset; } ;
struct ohash {int size; TYPE_2__* t; TYPE_1__ info; } ;
struct TYPE_4__ {char* p; int hv; } ;


 char* DELETED ;
 unsigned int NONE ;
 int STAT_HASH_LENGTH ;
 int STAT_HASH_LOOKUP ;
 int STAT_HASH_POSITIVE ;
 scalar_t__ strncmp (char*,char const*,int) ;

unsigned int
ohash_lookup_interval(struct ohash *h, const char *start, const char *end,
    uint32_t hv)
{
 unsigned int i, incr;
 unsigned int empty;




 empty = NONE;
 i = hv % h->size;
 incr = ((hv % (h->size-2)) & ~1) + 1;
 while (h->t[i].p != ((void*)0)) {



  if (h->t[i].p == DELETED) {
   if (empty == NONE)
    empty = i;
  } else if (h->t[i].hv == hv &&
      strncmp(h->t[i].p+h->info.key_offset, start,
   end - start) == 0 &&
      (h->t[i].p+h->info.key_offset)[end-start] == '\0') {
   if (empty != NONE) {
    h->t[empty].hv = hv;
    h->t[empty].p = h->t[i].p;
    h->t[i].p = DELETED;
    return empty;
   } else {



    return i;
   }
  }
  i += incr;
  if (i >= h->size)
   i -= h->size;
 }


 if (empty != NONE)
  i = empty;
 h->t[i].hv = hv;
 return i;
}
