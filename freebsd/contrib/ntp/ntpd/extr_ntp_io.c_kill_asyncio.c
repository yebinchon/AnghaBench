
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;


 int BLOCKIO () ;
 int UNBLOCKIO () ;
 int close_and_delete_fd_from_list (int ) ;
 TYPE_1__* fd_list ;
 scalar_t__ maxactivefd ;

void
kill_asyncio(
 int startfd
 )
{
 BLOCKIO();






 maxactivefd = 0;

 while (fd_list != ((void*)0))
  close_and_delete_fd_from_list(fd_list->fd);

 UNBLOCKIO();
}
