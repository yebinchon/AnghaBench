
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct activemap {scalar_t__ am_magic; size_t am_mapsize; int am_nextents; scalar_t__ am_ndirty; int * am_memtab; int am_memmap; int am_syncmap; int am_diskmap; } ;


 scalar_t__ ACTIVEMAP_MAGIC ;
 int PJDLOG_ASSERT (int) ;
 int activemap_sync_rewind (struct activemap*) ;
 int bit_ffs (int ,int,int*) ;
 scalar_t__ bit_test (int ,int) ;
 int ext2reqs (struct activemap*,int) ;
 int memcpy (int ,unsigned char const*,size_t) ;

void
activemap_copyin(struct activemap *amp, const unsigned char *buf, size_t size)
{
 int ext;

 PJDLOG_ASSERT(amp->am_magic == ACTIVEMAP_MAGIC);
 PJDLOG_ASSERT(size >= amp->am_mapsize);

 memcpy(amp->am_diskmap, buf, amp->am_mapsize);
 memcpy(amp->am_memmap, buf, amp->am_mapsize);
 memcpy(amp->am_syncmap, buf, amp->am_mapsize);

 bit_ffs(amp->am_memmap, amp->am_nextents, &ext);
 if (ext == -1) {

  return;
 }



 activemap_sync_rewind(amp);





 amp->am_ndirty = 0;
 for (; ext < amp->am_nextents; ext++) {
  if (bit_test(amp->am_memmap, ext)) {
   amp->am_memtab[ext] = ext2reqs(amp, ext);
   amp->am_ndirty++;
  }
 }
}
