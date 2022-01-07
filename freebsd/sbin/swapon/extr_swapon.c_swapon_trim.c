
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;


 scalar_t__ BBSIZE ;
 int DIOCGDELETE ;
 int DIOCGMEDIASIZE ;
 int O_WRONLY ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*,char const*) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ioctl (int,int ,scalar_t__*) ;
 int open (char const*,int ) ;
 int swapon (char const*) ;
 int warn (char*) ;

__attribute__((used)) static int
swapon_trim(const char *name)
{
 struct stat sb;
 off_t ioarg[2], sz;
 int error, fd;


 fd = open(name, O_WRONLY);
 if (fd < 0)
  errx(1, "Cannot open %s", name);

 if (fstat(fd, &sb) < 0)
  errx(1, "Cannot stat %s", name);
 if (S_ISREG(sb.st_mode))
  sz = sb.st_size;
 else if (S_ISCHR(sb.st_mode)) {
  if (ioctl(fd, DIOCGMEDIASIZE, &sz) != 0)
   err(1, "ioctl(DIOCGMEDIASIZE)");
 } else
  errx(1, "%s has an invalid file type", name);

 ioarg[0] = BBSIZE;
 ioarg[1] = sz - BBSIZE;
 if (ioctl(fd, DIOCGDELETE, ioarg) != 0)
  warn("ioctl(DIOCGDELETE)");


 error = swapon(name);
 close(fd);
 return (error);
}
