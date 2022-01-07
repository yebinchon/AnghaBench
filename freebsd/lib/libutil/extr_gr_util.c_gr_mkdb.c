
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_DIRECTORY ;
 int O_RDONLY ;
 scalar_t__ chmod (int ,int) ;
 int close (int) ;
 scalar_t__ fsync (int) ;
 int group_dir ;
 int group_file ;
 int open (int ,int) ;
 scalar_t__ rename (int ,int ) ;
 int tempname ;

int
gr_mkdb(void)
{
 int fd;

 if (chmod(tempname, 0644) != 0)
  return (-1);

 if (rename(tempname, group_file) != 0)
  return (-1);





 if ((fd = open(group_dir, O_RDONLY|O_DIRECTORY)) == -1)
  return (-1);

 if (fsync(fd) != 0) {
  close(fd);
  return (-1);
 }

 close(fd);
 return(0);
}
