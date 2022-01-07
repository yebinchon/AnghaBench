
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dd_fd; } ;
typedef TYPE_1__ RST_DIR ;


 int close (int ) ;
 int free (TYPE_1__*) ;

void
rst_closedir(void *arg)
{
 RST_DIR *dirp;

 dirp = arg;
 (void)close(dirp->dd_fd);
 free(dirp);
 return;
}
