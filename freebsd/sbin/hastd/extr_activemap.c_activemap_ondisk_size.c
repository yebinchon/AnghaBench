
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct activemap {scalar_t__ am_magic; size_t am_diskmapsize; } ;


 scalar_t__ ACTIVEMAP_MAGIC ;
 int PJDLOG_ASSERT (int) ;

size_t
activemap_ondisk_size(const struct activemap *amp)
{

 PJDLOG_ASSERT(amp->am_magic == ACTIVEMAP_MAGIC);

 return (amp->am_diskmapsize);
}
