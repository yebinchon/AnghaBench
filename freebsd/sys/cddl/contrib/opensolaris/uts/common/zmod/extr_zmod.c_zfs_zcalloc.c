
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;


 int M_NOWAIT ;
 int M_SOLARIS ;
 void* malloc (size_t,int ,int ) ;

__attribute__((used)) static void *
zfs_zcalloc(void *opaque, uint_t items, uint_t size)
{
 void *ptr;

 ptr = malloc((size_t)items * size, M_SOLARIS, M_NOWAIT);
 return ptr;
}
