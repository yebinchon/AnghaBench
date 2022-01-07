
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct _buf {scalar_t__ mounted; } ;


 int kobj_get_filesize_loader (struct _buf*,int *) ;
 int kobj_get_filesize_vnode (struct _buf*,int *) ;

int
kobj_get_filesize(struct _buf *file, uint64_t *size)
{

 if (file->mounted)
  return (kobj_get_filesize_vnode(file, size));
 else
  return (kobj_get_filesize_loader(file, size));
}
