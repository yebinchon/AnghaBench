
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int NV_ENCODE_NATIVE ;
 int VERIFY0 (int ) ;
 int nvlist_size (int *,size_t*,int ) ;

size_t
fnvlist_size(nvlist_t *nvl)
{
 size_t size;
 VERIFY0(nvlist_size(nvl, &size, NV_ENCODE_NATIVE));
 return (size);
}
