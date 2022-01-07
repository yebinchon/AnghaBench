
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int acl_t ;


 int ENOSYS ;
 int errno ;

ssize_t
acl_copy_ext(void *buf_p, acl_t acl, ssize_t size)
{

 errno = ENOSYS;
 return (-1);
}
