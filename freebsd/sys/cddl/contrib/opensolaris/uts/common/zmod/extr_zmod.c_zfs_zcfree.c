
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_SOLARIS ;
 int free (void*,int ) ;

__attribute__((used)) static void
zfs_zcfree(void *opaque, void *ptr)
{

 free(ptr, M_SOLARIS);
}
