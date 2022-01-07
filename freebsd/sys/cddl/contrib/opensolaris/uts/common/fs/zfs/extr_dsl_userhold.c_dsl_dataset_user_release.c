
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int dsl_dataset_user_release_impl (int *,int *,int *) ;

int
dsl_dataset_user_release(nvlist_t *holds, nvlist_t *errlist)
{
 return (dsl_dataset_user_release_impl(holds, errlist, ((void*)0)));
}
