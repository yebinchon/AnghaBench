
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long dd_loc; int dd_buf; int dd_fd; int dd_size; } ;
typedef TYPE_1__ RST_DIR ;


 int DIRBLKSIZ ;
 int SEEK_SET ;
 int fprintf (int ,char*,long) ;
 int lseek (int ,scalar_t__,int ) ;
 int read (int ,int ,int) ;
 scalar_t__ rounddown2 (long,int) ;
 long rst_telldir (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static void
rst_seekdir(RST_DIR *dirp, long loc, long base)
{

 if (loc == rst_telldir(dirp))
  return;
 loc -= base;
 if (loc < 0)
  fprintf(stderr, "bad seek pointer to rst_seekdir %ld\n", loc);
 (void) lseek(dirp->dd_fd, base + rounddown2(loc, DIRBLKSIZ), SEEK_SET);
 dirp->dd_loc = loc & (DIRBLKSIZ - 1);
 if (dirp->dd_loc != 0)
  dirp->dd_size = read(dirp->dd_fd, dirp->dd_buf, DIRBLKSIZ);
}
