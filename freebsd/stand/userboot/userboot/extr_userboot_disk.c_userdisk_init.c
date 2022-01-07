
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int ;
typedef void* off_t ;
struct TYPE_3__ {int * ud_bcache; scalar_t__ ud_open; void* sectorsize; void* mediasize; } ;


 scalar_t__ CALLBACK (int ,int,int ,void**) ;
 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 int ENOMEM ;
 int ENXIO ;
 int bcache_add_dev (int) ;
 int diskioctl ;
 TYPE_1__* malloc (int) ;
 TYPE_1__* ud_info ;
 int userboot_disk_maxunit ;
 int userdisk_maxunit ;

__attribute__((used)) static int
userdisk_init(void)
{
 off_t mediasize;
 u_int sectorsize;
 int i;

 userdisk_maxunit = userboot_disk_maxunit;
 if (userdisk_maxunit > 0) {
  ud_info = malloc(sizeof(*ud_info) * userdisk_maxunit);
  if (ud_info == ((void*)0))
   return (ENOMEM);
  for (i = 0; i < userdisk_maxunit; i++) {
   if (CALLBACK(diskioctl, i, DIOCGSECTORSIZE,
       &sectorsize) != 0 || CALLBACK(diskioctl, i,
       DIOCGMEDIASIZE, &mediasize) != 0)
    return (ENXIO);
   ud_info[i].mediasize = mediasize;
   ud_info[i].sectorsize = sectorsize;
   ud_info[i].ud_open = 0;
   ud_info[i].ud_bcache = ((void*)0);
  }
 }
 bcache_add_dev(userdisk_maxunit);
 return(0);
}
