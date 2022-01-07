
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _buf {scalar_t__ mounted; } ;


 int kobj_read_file_loader (struct _buf*,char*,unsigned int,unsigned int) ;
 int kobj_read_file_vnode (struct _buf*,char*,unsigned int,unsigned int) ;

int
kobj_read_file(struct _buf *file, char *buf, unsigned size, unsigned off)
{

 if (file->mounted)
  return (kobj_read_file_vnode(file, buf, size, off));
 else
  return (kobj_read_file_loader(file, buf, size, off));
}
