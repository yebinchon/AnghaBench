
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_bitmap {int dummy; } ;
struct ida {int * free_bitmap; int idr; } ;
typedef int gfp_t ;


 int M_IDR ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int * malloc (int,int ,int ) ;

int
ida_pre_get(struct ida *ida, gfp_t flags)
{
 if (idr_pre_get(&ida->idr, flags) == 0)
  return (0);

 if (ida->free_bitmap == ((void*)0)) {
  ida->free_bitmap =
      malloc(sizeof(struct ida_bitmap), M_IDR, flags);
 }
 return (ida->free_bitmap != ((void*)0));
}
