
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int c_iflag; unsigned int c_oflag; unsigned int c_cflag; unsigned int c_lflag; void** c_cc; } ;


 int BRKINT ;
 int BSDLY ;
 int CDISCARD ;
 int CEOF ;
 int CERASE ;
 int CFLUSH ;
 void* CHK (void*,int ) ;
 int CINTR ;
 int CKILL ;
 int CLNEXT ;
 int CLOCAL ;
 int CQUIT ;
 int CRDLY ;
 int CREAD ;
 int CRPRNT ;
 int CS8 ;
 int CSIZE ;
 int CSTART ;
 int CSTOP ;
 int CSTOPB ;
 int CSUSP ;
 int CWERASE ;
 int ECHO ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOK ;
 int ECHOKE ;
 int ECHONL ;
 int ECHOPRT ;
 int FFDLY ;
 int ICANON ;
 int ICRNL ;
 int IGNBRK ;
 int IGNCR ;
 int IGNPAR ;
 int IMAXBEL ;
 int INLCR ;
 int INPCK ;
 int ISIG ;
 int ISTRIP ;
 int IUCLC ;
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int NLDLY ;
 int NOFLSH ;
 int OCRNL ;
 int OFDEL ;
 int OFILL ;
 int OLCUC ;
 int ONLCR ;
 int ONLRET ;
 int ONOCR ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int SET_TTY (int ,TYPE_1__*) ;
 int STDERR_FILENO ;
 int TABDLY ;
 int TOSTOP ;
 size_t VDISCARD ;
 size_t VEOF ;
 size_t VERASE ;
 size_t VFLUSH ;
 size_t VINTR ;
 size_t VKILL ;
 size_t VLNEXT ;
 size_t VQUIT ;
 size_t VREPRINT ;
 size_t VSTART ;
 size_t VSTOP ;
 size_t VSUSP ;
 int VTDLY ;
 size_t VWERASE ;
 int XCASE ;
 TYPE_1__ mode ;
 int stty (int ,TYPE_1__*) ;
 int tcgetattr (int ,TYPE_1__*) ;

__attribute__((used)) static void
reset_mode(void)
{



    stty(STDERR_FILENO, &mode);
    SET_TTY(STDERR_FILENO, &mode);
}
