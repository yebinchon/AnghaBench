
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct pidfh {int pf_fd; scalar_t__ pf_dev; scalar_t__ pf_ino; } ;


 int EDOOFUS ;
 int errno ;
 int fstat (int,struct stat*) ;

__attribute__((used)) static int
pidfile_verify(const struct pidfh *pfh)
{
 struct stat sb;

 if (pfh == ((void*)0) || pfh->pf_fd == -1)
  return (EDOOFUS);



 if (fstat(pfh->pf_fd, &sb) == -1)
  return (errno);
 if (sb.st_dev != pfh->pf_dev || sb.st_ino != pfh->pf_ino)
  return (EDOOFUS);
 return (0);
}
