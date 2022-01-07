
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int F_FULLFSYNC ;
 int fcntl (int ,int ) ;
 int fdatasync (int ) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int fsync (int ) ;

int os_fdatasync(FILE *stream)
{
 if (!fflush(stream)) {

  return fdatasync(fileno(stream));
 }

 return -1;
}
