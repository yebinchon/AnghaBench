
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_t ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_NFS4 ;
 int _PC_ACL_NFS4 ;
 int acl_set_fd_np (int,int ,int ) ;
 int fpathconf (int,int ) ;

int
acl_set_fd(int fd, acl_t acl)
{

 if (fpathconf(fd, _PC_ACL_NFS4) == 1)
  return (acl_set_fd_np(fd, acl, ACL_TYPE_NFS4));

 return (acl_set_fd_np(fd, acl, ACL_TYPE_ACCESS));
}
