
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;


 int M_CAMCCB ;
 int free (union ccb*,int ) ;

void
xpt_free_ccb(union ccb *free_ccb)
{
 free(free_ccb, M_CAMCCB);
}
