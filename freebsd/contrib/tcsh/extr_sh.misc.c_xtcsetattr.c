
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ handle_pending_signals () ;
 int tcsetattr (int,int,struct termios const*) ;

int
xtcsetattr(int fildes, int optional_actions, const struct termios *termios_p)
{
    int res;

    while ((res = tcsetattr(fildes, optional_actions, termios_p)) == -1 &&
    errno == EINTR)
 if (handle_pending_signals())
     break;
    return res;
}
