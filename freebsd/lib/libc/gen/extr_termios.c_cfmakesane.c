
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cc; void* c_ospeed; void* c_ispeed; int c_oflag; int c_lflag; int c_iflag; int c_cflag; } ;


 int TTYDEF_CFLAG ;
 int TTYDEF_IFLAG ;
 int TTYDEF_LFLAG ;
 int TTYDEF_OFLAG ;
 void* TTYDEF_SPEED ;
 int memcpy (int *,int ,int) ;
 int ttydefchars ;

void
cfmakesane(struct termios *t)
{

 t->c_cflag = TTYDEF_CFLAG;
 t->c_iflag = TTYDEF_IFLAG;
 t->c_lflag = TTYDEF_LFLAG;
 t->c_oflag = TTYDEF_OFLAG;
 t->c_ispeed = TTYDEF_SPEED;
 t->c_ospeed = TTYDEF_SPEED;
 memcpy(&t->c_cc, ttydefchars, sizeof ttydefchars);
}
