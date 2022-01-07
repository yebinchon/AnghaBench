
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 size_t INTERPOS_write ;
 scalar_t__* __libc_interposing ;
 int stub1 (int,void const*,size_t) ;

ssize_t
write(int fd, const void *buf, size_t nbytes)
{

 return (((ssize_t (*)(int, const void *, size_t))
     __libc_interposing[INTERPOS_write])(fd, buf, nbytes));
}
