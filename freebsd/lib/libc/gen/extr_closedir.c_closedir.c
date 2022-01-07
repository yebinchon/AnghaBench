
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int _close (int ) ;
 int fdclosedir (int *) ;

int
closedir(DIR *dirp)
{

 return (_close(fdclosedir(dirp)));
}
