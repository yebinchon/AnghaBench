
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_NOFOLLOW ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int STDERR_FILENO ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWUSR ;
 int close (int) ;
 int open (char const*,int ) ;
 int openat (int,char const*,int,int) ;
 int sock_fd_write (int,int,int,int ) ;
 int warn (char*,...) ;

int
process_manpage(int srv_fd, int dstdir_fd, const char *path)
{
 int in_fd, out_fd;
 int irc;

 if ((in_fd = open(path, O_RDONLY)) == -1) {
  warn("open(%s)", path);
  return 0;
 }

 if ((out_fd = openat(dstdir_fd, path,
     O_WRONLY | O_NOFOLLOW | O_CREAT | O_TRUNC,
     S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)) == -1) {
  warn("openat(%s)", path);
  close(in_fd);
  return 0;
 }

 irc = sock_fd_write(srv_fd, in_fd, out_fd, STDERR_FILENO);

 close(in_fd);
 close(out_fd);

 if (irc < 0) {
  warn("sendmsg");
  return -1;
 }
 return 0;
}
