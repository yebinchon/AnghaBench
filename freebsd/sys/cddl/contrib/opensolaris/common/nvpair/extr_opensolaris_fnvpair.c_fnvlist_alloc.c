
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int VERIFY0 (int ) ;
 int nvlist_alloc (int **,int ,int ) ;

nvlist_t *
fnvlist_alloc(void)
{
 nvlist_t *nvl;
 VERIFY0(nvlist_alloc(&nvl, NV_UNIQUE_NAME, KM_SLEEP));
 return (nvl);
}
