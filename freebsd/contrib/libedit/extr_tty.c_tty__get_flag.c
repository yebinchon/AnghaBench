
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcflag_t ;
struct termios {int c_lflag; int c_cflag; int c_oflag; int c_iflag; } ;






 int abort () ;

__attribute__((used)) static tcflag_t *
tty__get_flag(struct termios *t, int kind) {
 switch (kind) {
 case 130:
  return &t->c_iflag;
 case 128:
  return &t->c_oflag;
 case 131:
  return &t->c_cflag;
 case 129:
  return &t->c_lflag;
 default:
  abort();

 }
}
