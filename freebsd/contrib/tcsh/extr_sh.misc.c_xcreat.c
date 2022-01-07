
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 scalar_t__ EINTR ;
 int creat (char const*,int ) ;
 scalar_t__ errno ;
 scalar_t__ handle_pending_signals () ;

int
xcreat(const char *path, mode_t mode)
{
    int res;

    while ((res = creat(path, mode)) == -1 && errno == EINTR)
 if (handle_pending_signals())
     break;
    return res;
}
