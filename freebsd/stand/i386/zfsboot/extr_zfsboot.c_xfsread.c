
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int dnode_phys_t ;


 int printf (char*) ;
 int spa ;
 scalar_t__ zfs_read (int ,int const*,int *,void*,size_t) ;

__attribute__((used)) static int
xfsread(const dnode_phys_t *dnode, off_t *offp, void *buf, size_t nbyte)
{
    if ((size_t)zfs_read(spa, dnode, offp, buf, nbyte) != nbyte) {
 printf("Invalid format\n");
 return -1;
    }
    return 0;
}
