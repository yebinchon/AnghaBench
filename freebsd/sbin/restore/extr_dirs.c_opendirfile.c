
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dd_fd; scalar_t__ dd_loc; } ;
typedef TYPE_1__ RST_DIR ;


 int O_RDONLY ;
 int close (int) ;
 TYPE_1__* malloc (int) ;
 int open (char const*,int ) ;

__attribute__((used)) static RST_DIR *
opendirfile(const char *name)
{
 RST_DIR *dirp;
 int fd;

 if ((fd = open(name, O_RDONLY)) == -1)
  return (((void*)0));
 if ((dirp = malloc(sizeof(RST_DIR))) == ((void*)0)) {
  (void)close(fd);
  return (((void*)0));
 }
 dirp->dd_fd = fd;
 dirp->dd_loc = 0;
 return (dirp);
}
