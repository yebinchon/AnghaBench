
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_3__ {int ptymaster; } ;
typedef TYPE_1__ Session ;


 int packet_check_eom () ;
 int packet_get_int () ;
 scalar_t__ tcsendbreak (int,int ) ;

__attribute__((used)) static int
session_break_req(struct ssh *ssh, Session *s)
{

 packet_get_int();
 packet_check_eom();

 if (s->ptymaster == -1 || tcsendbreak(s->ptymaster, 0) < 0)
  return 0;
 return 1;
}
