
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int nvlist_alloc (int **,int ,int ) ;

int
be_prop_list_alloc(nvlist_t **be_list)
{

 return (nvlist_alloc(be_list, NV_UNIQUE_NAME, KM_SLEEP));
}
