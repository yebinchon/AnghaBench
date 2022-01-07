
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int ENODEV ;
 int EPERM ;
 int FREAD ;
 int FWRITE ;
 int O_NONBLOCK ;
 char* devtoname (struct cdev*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
xptopen(struct cdev *dev, int flags, int fmt, struct thread *td)
{




 if (((flags & FWRITE) == 0) || ((flags & FREAD) == 0))
  return(EPERM);




 if ((flags & O_NONBLOCK) != 0) {
  printf("%s: can't do nonblocking access\n", devtoname(dev));
  return(ENODEV);
 }

 return(0);
}
