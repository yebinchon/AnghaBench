
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct activemap {scalar_t__ am_magic; int am_syncoff; int am_nextents; int am_syncmap; } ;


 scalar_t__ ACTIVEMAP_MAGIC ;
 int PJDLOG_ASSERT (int) ;
 int bit_ffs (int ,int ,int*) ;

void
activemap_sync_rewind(struct activemap *amp)
{
 int ext;

 PJDLOG_ASSERT(amp->am_magic == ACTIVEMAP_MAGIC);

 bit_ffs(amp->am_syncmap, amp->am_nextents, &ext);
 if (ext == -1) {

  amp->am_syncoff = -2;
  return;
 }



 amp->am_syncoff = -1;
}
