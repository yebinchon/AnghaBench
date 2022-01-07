
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int _dirfd (int *) ;

int
dirfd(DIR *dirp)
{

 return (_dirfd(dirp));
}
