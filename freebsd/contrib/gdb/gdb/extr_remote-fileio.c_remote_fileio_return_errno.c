
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int remote_fileio_errno_to_target (int ) ;
 int remote_fileio_reply (int,int ) ;

__attribute__((used)) static void
remote_fileio_return_errno (int retcode)
{
  remote_fileio_reply (retcode,
         retcode < 0 ? remote_fileio_errno_to_target (errno) : 0);
}
