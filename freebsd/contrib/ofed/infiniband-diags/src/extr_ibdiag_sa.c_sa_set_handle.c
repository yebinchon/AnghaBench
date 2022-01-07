
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int grh_present; int gid; } ;
struct sa_handle {TYPE_1__ dport; } ;
typedef int ibmad_gid_t ;


 int memcpy (int ,int *,int) ;

int sa_set_handle(struct sa_handle * handle, int grh_present, ibmad_gid_t *gid)
{
 if (grh_present) {
  if (gid == ((void*)0)) {
   return -1;
  } else {
   handle->dport.grh_present = 1;
   memcpy(handle->dport.gid, gid, 16);
  }
 }
 return 0;
}
