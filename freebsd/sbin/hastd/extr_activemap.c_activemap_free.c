
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct activemap {scalar_t__ am_magic; int am_syncmap; int am_memmap; int am_diskmap; int am_memtab; } ;


 scalar_t__ ACTIVEMAP_MAGIC ;
 int PJDLOG_ASSERT (int) ;
 int free (int ) ;
 int keepdirty_free (struct activemap*) ;

void
activemap_free(struct activemap *amp)
{

 PJDLOG_ASSERT(amp->am_magic == ACTIVEMAP_MAGIC);

 amp->am_magic = 0;

 keepdirty_free(amp);
 free(amp->am_memtab);
 free(amp->am_diskmap);
 free(amp->am_memmap);
 free(amp->am_syncmap);
}
