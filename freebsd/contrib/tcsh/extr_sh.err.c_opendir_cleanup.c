
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int xclosedir (int *) ;

void
opendir_cleanup(void *xdir)
{
    DIR *dir;

    dir = xdir;
    xclosedir(dir);
}
