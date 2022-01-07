
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {long dd_size; long dd_loc; int dd_fd; } ;
typedef TYPE_1__ RST_DIR ;


 int SEEK_CUR ;
 scalar_t__ lseek (int ,int ,int ) ;

__attribute__((used)) static long
rst_telldir(RST_DIR *dirp)
{
 return ((long)lseek(dirp->dd_fd,
     (off_t)0, SEEK_CUR) - dirp->dd_size + dirp->dd_loc);
}
