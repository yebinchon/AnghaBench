
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILEIO_EBADF ;
 int remote_fileio_reply (int,int ) ;

__attribute__((used)) static void
remote_fileio_badfd (void)
{
  remote_fileio_reply (-1, FILEIO_EBADF);
}
