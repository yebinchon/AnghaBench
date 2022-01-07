
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd ;


 int canreturn ;
 int errx (int,char*) ;
 int rump_sys_read (int,int*,int) ;

__attribute__((used)) static void *
wrk(void *arg)
{
 int fd = (uintptr_t)arg;

 rump_sys_read(fd, &fd, sizeof(fd));
 if (!canreturn)
  errx(1, "should not have returned");
 if (fd != 37)
  errx(1, "got invalid magic");

 return ((void*)0);
}
