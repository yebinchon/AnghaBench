
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;


 int M_CAMCCB ;
 int M_NOWAIT ;
 int M_ZERO ;
 union ccb* malloc (int,int ,int) ;

union ccb *
xpt_alloc_ccb_nowait()
{
 union ccb *new_ccb;

 new_ccb = malloc(sizeof(*new_ccb), M_CAMCCB, M_ZERO|M_NOWAIT);
 return (new_ccb);
}
