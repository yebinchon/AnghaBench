
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int _getdirentries (int,char*,size_t,int *) ;

ssize_t
getdents(int fd, char *buf, size_t nbytes)
{






 return (_getdirentries(fd, buf, nbytes, ((void*)0)));
}
