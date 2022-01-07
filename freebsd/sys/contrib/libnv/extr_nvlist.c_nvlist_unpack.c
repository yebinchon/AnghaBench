
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int * nvlist_xunpack (void const*,size_t,int *,int ,int) ;

nvlist_t *
nvlist_unpack(const void *buf, size_t size, int flags)
{

 return (nvlist_xunpack(buf, size, ((void*)0), 0, flags));
}
