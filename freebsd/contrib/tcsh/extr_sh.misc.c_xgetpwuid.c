
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 struct passwd* getpwuid (int ) ;
 scalar_t__ handle_pending_signals () ;

struct passwd *
xgetpwuid(uid_t xuid)
{
    struct passwd *res;

    errno = 0;
    while ((res = getpwuid(xuid)) == ((void*)0) && errno == EINTR) {
 if (handle_pending_signals())
     break;
 errno = 0;
    }
    return res;
}
