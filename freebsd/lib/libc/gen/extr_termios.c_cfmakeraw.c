
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int c_lflag; int c_cflag; int* c_cc; int c_oflag; } ;


 int BRKINT ;
 int CREAD ;
 int CS8 ;
 int CSIZE ;
 int ECHO ;
 int ECHOE ;
 int ECHOK ;
 int ECHONL ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int IGNPAR ;
 int IMAXBEL ;
 int INLCR ;
 int INPCK ;
 int ISIG ;
 int ISTRIP ;
 int IXOFF ;
 int IXON ;
 int NOFLSH ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;
 int PENDIN ;
 int TOSTOP ;
 size_t VMIN ;
 size_t VTIME ;

void
cfmakeraw(struct termios *t)
{

 t->c_iflag &= ~(IMAXBEL|IXOFF|INPCK|BRKINT|PARMRK|ISTRIP|INLCR|IGNCR|ICRNL|IXON|IGNPAR);
 t->c_iflag |= IGNBRK;
 t->c_oflag &= ~OPOST;
 t->c_lflag &= ~(ECHO|ECHOE|ECHOK|ECHONL|ICANON|ISIG|IEXTEN|NOFLSH|TOSTOP|PENDIN);
 t->c_cflag &= ~(CSIZE|PARENB);
 t->c_cflag |= CS8|CREAD;
 t->c_cc[VMIN] = 1;
 t->c_cc[VTIME] = 0;
}
