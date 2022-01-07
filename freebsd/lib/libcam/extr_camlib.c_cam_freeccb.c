
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;


 int free (union ccb*) ;

void
cam_freeccb(union ccb *ccb)
{
 free(ccb);
}
