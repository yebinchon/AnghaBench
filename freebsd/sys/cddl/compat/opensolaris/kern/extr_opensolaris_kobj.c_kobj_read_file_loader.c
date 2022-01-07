
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _buf {int ptr; } ;


 int ENOENT ;
 int bcopy (char*,char*,unsigned int) ;
 char* preload_fetch_addr (int ) ;

int
kobj_read_file_loader(struct _buf *file, char *buf, unsigned size, unsigned off)
{
 char *ptr;

 ptr = preload_fetch_addr(file->ptr);
 if (ptr == ((void*)0))
  return (ENOENT);
 bcopy(ptr + off, buf, size);
 return (0);
}
