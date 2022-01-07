
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ DIR ;


 int close (int) ;
 int free (TYPE_1__*) ;

int
closedir(DIR *dp)
{
 close(dp->fd);
 dp->fd = -1;
 free(dp);
 return 0;
}
