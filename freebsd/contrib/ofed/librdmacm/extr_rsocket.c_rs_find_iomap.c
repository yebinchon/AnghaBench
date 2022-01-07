
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsocket {int target_iomap_size; struct rs_iomap* target_iomap; } ;
struct TYPE_2__ {scalar_t__ length; } ;
struct rs_iomap {scalar_t__ offset; TYPE_1__ sge; } ;
typedef scalar_t__ off_t ;



__attribute__((used)) static struct rs_iomap *rs_find_iomap(struct rsocket *rs, off_t offset)
{
 int i;

 for (i = 0; i < rs->target_iomap_size; i++) {
  if (offset >= rs->target_iomap[i].offset &&
      offset < rs->target_iomap[i].offset + rs->target_iomap[i].sge.length)
   return &rs->target_iomap[i];
 }
 return ((void*)0);
}
