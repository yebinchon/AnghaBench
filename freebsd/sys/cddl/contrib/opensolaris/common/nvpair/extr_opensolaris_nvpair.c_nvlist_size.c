
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int NVS_OP_GETSIZE ;
 int nvlist_common (int *,int *,size_t*,int,int ) ;

int
nvlist_size(nvlist_t *nvl, size_t *size, int encoding)
{
 return (nvlist_common(nvl, ((void*)0), size, encoding, NVS_OP_GETSIZE));
}
