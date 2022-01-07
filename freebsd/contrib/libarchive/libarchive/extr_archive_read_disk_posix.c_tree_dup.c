
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_DUPFD_CLOEXEC ;
 int __archive_ensure_cloexec_flag (int) ;
 int dup (int) ;
 int fcntl (int,int ,int ) ;

__attribute__((used)) static int
tree_dup(int fd)
{
 int new_fd;
 new_fd = dup(fd);
 __archive_ensure_cloexec_flag(new_fd);
 return (new_fd);
}
