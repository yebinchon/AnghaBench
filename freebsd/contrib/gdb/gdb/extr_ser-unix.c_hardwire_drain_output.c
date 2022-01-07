
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int fd; } ;
struct hardwire_ttystate {int sgttyb; } ;


 int TCSBRK ;
 int TIOCSETP ;
 scalar_t__ get_tty_state (struct serial*,struct hardwire_ttystate*) ;
 int ioctl (int ,int ,int) ;
 int tcdrain (int ) ;

__attribute__((used)) static int
hardwire_drain_output (struct serial *scb)
{
}
