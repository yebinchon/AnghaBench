
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int nmaps; int ** mapp; int * BITMAPS; int BSIZE; } ;
typedef TYPE_1__ HTAB ;


 scalar_t__ __get_page (TYPE_1__*,char*,int ,int ,int,int) ;
 int free (int *) ;
 scalar_t__ malloc (int ) ;

__attribute__((used)) static u_int32_t *
fetch_bitmap(HTAB *hashp, int ndx)
{
 if (ndx >= hashp->nmaps)
  return (((void*)0));
 if ((hashp->mapp[ndx] = (u_int32_t *)malloc(hashp->BSIZE)) == ((void*)0))
  return (((void*)0));
 if (__get_page(hashp,
     (char *)hashp->mapp[ndx], hashp->BITMAPS[ndx], 0, 1, 1)) {
  free(hashp->mapp[ndx]);
  return (((void*)0));
 }
 return (hashp->mapp[ndx]);
}
