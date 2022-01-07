
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ handle_pending_signals () ;

void
xclose(int fildes)
{
    if (fildes < 0)
 return;
    while (close(fildes) == -1 && errno == EINTR)
 if (handle_pending_signals())
     break;
}
