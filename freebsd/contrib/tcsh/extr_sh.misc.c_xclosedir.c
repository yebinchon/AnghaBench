
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 scalar_t__ EINTR ;
 int closedir (int *) ;
 scalar_t__ errno ;
 scalar_t__ handle_pending_signals () ;

void
xclosedir(DIR *dirp)
{
    while (closedir(dirp) == -1 && errno == EINTR)
 if (handle_pending_signals())
     break;
}
