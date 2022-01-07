
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int buf ;


 int EINVAL ;
 int errno ;
 int read (int,char*,int) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static pid_t
get_pid(int fd, int *err)
{
 int bytes_read;
 char buf[32];
 pid_t pid;

 bytes_read = read (fd, buf, sizeof (buf) - 1);
 if (bytes_read > 0) {
  buf[bytes_read] = '\0';
  pid = (pid_t)strtol (buf, (char **) ((void*)0), 10);
 } else {
  pid = -1;
  *err = bytes_read ? errno : EINVAL;
 }
 return pid;
}
