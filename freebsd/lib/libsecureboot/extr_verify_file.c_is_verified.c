
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct verify_status {scalar_t__ vs_dev; scalar_t__ vs_ino; int vs_status; struct verify_status* vs_next; } ;
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 int VE_NOT_CHECKED ;
 struct verify_status* verified_files ;

int
is_verified(struct stat *stp)
{
 struct verify_status *vsp;

 for (vsp = verified_files; vsp != ((void*)0); vsp = vsp->vs_next) {
  if (stp->st_dev == vsp->vs_dev &&
      stp->st_ino == vsp->vs_ino)
   return (vsp->vs_status);
 }
 return (VE_NOT_CHECKED);
}
