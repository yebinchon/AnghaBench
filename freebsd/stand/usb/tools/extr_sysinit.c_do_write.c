
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_SOFTWARE ;
 int err (int ,char*) ;
 int strlen (char const*) ;
 int write (int,char const*,int) ;

__attribute__((used)) static void
do_write(int fd, const char *buf)
{
 int len = strlen(buf);

 if (write(fd, buf, len) != len)
  err(EX_SOFTWARE, "Could not write to output file");
}
