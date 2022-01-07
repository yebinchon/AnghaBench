
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 struct passwd* getpwnam (char const*) ;
 scalar_t__ handle_pending_signals () ;

struct passwd *
xgetpwnam(const char *name)
{
    struct passwd *res;

    errno = 0;
    while ((res = getpwnam(name)) == ((void*)0) && errno == EINTR) {
 if (handle_pending_signals())
     break;
 errno = 0;
    }
    return res;
}
