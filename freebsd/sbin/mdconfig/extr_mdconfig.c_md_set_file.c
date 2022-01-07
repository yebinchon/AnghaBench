
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_size; int st_mode; } ;
struct TYPE_2__ {scalar_t__ md_mediasize; int md_file; } ;


 int O_RDONLY ;
 int S_ISREG (int ) ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 int fstat (int,struct stat*) ;
 TYPE_1__ mdio ;
 int open (int ,int ) ;
 int * realpath (char const*,int ) ;

__attribute__((used)) static void
md_set_file(const char *fn)
{
 struct stat sb;
 int fd;

 if (realpath(fn, mdio.md_file) == ((void*)0))
  err(1, "could not find full path for %s", fn);
 fd = open(mdio.md_file, O_RDONLY);
 if (fd < 0)
  err(1, "could not open %s", fn);
 if (fstat(fd, &sb) == -1)
  err(1, "could not stat %s", fn);
 if (!S_ISREG(sb.st_mode))
  errx(1, "%s is not a regular file", fn);
 if (mdio.md_mediasize == 0)
  mdio.md_mediasize = sb.st_size;
 close(fd);
}
