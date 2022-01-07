
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct activemap {int am_nextents; int am_extentsize; int am_mediasize; } ;
typedef int off_t ;


 int MAXPHYS ;
 int PJDLOG_ASSERT (int) ;

__attribute__((used)) static __inline int
ext2reqs(const struct activemap *amp, int ext)
{
 off_t left;

 if (ext < amp->am_nextents - 1)
  return (((amp->am_extentsize - 1) / MAXPHYS) + 1);

 PJDLOG_ASSERT(ext == amp->am_nextents - 1);
 left = amp->am_mediasize % amp->am_extentsize;
 if (left == 0)
  left = amp->am_extentsize;
 return (((left - 1) / MAXPHYS) + 1);
}
