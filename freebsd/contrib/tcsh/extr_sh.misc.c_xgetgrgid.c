
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int gid_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 struct group* getgrgid (int ) ;
 scalar_t__ handle_pending_signals () ;

struct group *
xgetgrgid(gid_t xgid)
{
    struct group *res;

    errno = 0;
    while ((res = getgrgid(xgid)) == ((void*)0) && errno == EINTR) {
 if (handle_pending_signals())
     break;
 errno = 0;
    }
    return res;
}
