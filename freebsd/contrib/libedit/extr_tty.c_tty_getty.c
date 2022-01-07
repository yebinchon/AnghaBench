
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct termios {int dummy; } ;
struct TYPE_3__ {int el_infd; } ;
typedef TYPE_1__ EditLine ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int tcgetattr (int ,struct termios*) ;

__attribute__((used)) static int
tty_getty(EditLine *el, struct termios *t)
{
 int rv;
 while ((rv = tcgetattr(el->el_infd, t)) == -1 && errno == EINTR)
  continue;
 return rv;
}
