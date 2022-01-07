
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct activemap {scalar_t__ am_magic; size_t am_diskmapsize; scalar_t__ am_diskmap; int am_mapsize; int am_memmap; } ;


 scalar_t__ ACTIVEMAP_MAGIC ;
 int PJDLOG_ASSERT (int) ;
 int keepdirty_fill (struct activemap*) ;
 int memcpy (scalar_t__,int ,int ) ;

const unsigned char *
activemap_bitmap(struct activemap *amp, size_t *sizep)
{

 PJDLOG_ASSERT(amp->am_magic == ACTIVEMAP_MAGIC);

 if (sizep != ((void*)0))
  *sizep = amp->am_diskmapsize;
 memcpy(amp->am_diskmap, amp->am_memmap, amp->am_mapsize);
 keepdirty_fill(amp);
 return ((const unsigned char *)amp->am_diskmap);
}
