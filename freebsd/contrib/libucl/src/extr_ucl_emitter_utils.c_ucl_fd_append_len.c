
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,unsigned char const*,size_t) ;

__attribute__((used)) static int
ucl_fd_append_len (const unsigned char *str, size_t len, void *ud)
{
 int fd = *(int *)ud;

 return write (fd, str, len);
}
