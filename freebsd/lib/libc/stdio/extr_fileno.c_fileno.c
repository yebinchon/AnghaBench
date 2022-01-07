
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FLOCKFILE (int *) ;
 int FUNLOCKFILE (int *) ;
 int __sfileno (int *) ;

int
fileno(FILE *fp)
{
 int fd;

 FLOCKFILE(fp);
 fd = __sfileno(fp);
 FUNLOCKFILE(fp);

 return (fd);
}
