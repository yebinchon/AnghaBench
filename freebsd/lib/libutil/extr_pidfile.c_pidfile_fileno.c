
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int pf_fd; } ;


 int EDOOFUS ;
 int errno ;

int
pidfile_fileno(const struct pidfh *pfh)
{

 if (pfh == ((void*)0) || pfh->pf_fd == -1) {
  errno = EDOOFUS;
  return (-1);
 }
 return (pfh->pf_fd);
}
