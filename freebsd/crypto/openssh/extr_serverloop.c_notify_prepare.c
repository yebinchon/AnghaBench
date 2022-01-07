
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_SET (int,int *) ;
 int* notify_pipe ;

__attribute__((used)) static void
notify_prepare(fd_set *readset)
{
 if (notify_pipe[0] != -1)
  FD_SET(notify_pipe[0], readset);
}
