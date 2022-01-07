
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int c_oflag; int c_cflag; int c_lflag; scalar_t__* c_cc; int c_ispeed; } ;
struct linux_termios {int c_cflag; scalar_t__* c_cc; scalar_t__ c_line; int c_lflag; int c_oflag; int c_iflag; } ;


 int BRKINT ;
 int CLOCAL ;
 int CREAD ;
 int CRTSCTS ;
 int CSIZE ;
 int CSTOPB ;
 int ECHO ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOK ;
 int ECHOKE ;
 int ECHONL ;
 int ECHOPRT ;
 int FLUSHO ;
 int HUPCL ;
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
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int LINUX_BRKINT ;
 int LINUX_CLOCAL ;
 int LINUX_CREAD ;
 int LINUX_CRTSCTS ;
 int LINUX_CSTOPB ;
 int LINUX_ECHO ;
 int LINUX_ECHOCTL ;
 int LINUX_ECHOE ;
 int LINUX_ECHOK ;
 int LINUX_ECHOKE ;
 int LINUX_ECHONL ;
 int LINUX_ECHOPRT ;
 int LINUX_FLUSHO ;
 int LINUX_HUPCL ;
 int LINUX_ICANON ;
 int LINUX_ICRNL ;
 int LINUX_IEXTEN ;
 int LINUX_IGNBRK ;
 int LINUX_IGNCR ;
 int LINUX_IGNPAR ;
 int LINUX_IMAXBEL ;
 int LINUX_INLCR ;
 int LINUX_INPCK ;
 int LINUX_ISIG ;
 int LINUX_ISTRIP ;
 int LINUX_IXANY ;
 int LINUX_IXOFF ;
 int LINUX_IXON ;
 int LINUX_NCCS ;
 int LINUX_NOFLSH ;
 int LINUX_ONLCR ;
 int LINUX_OPOST ;
 int LINUX_PARENB ;
 int LINUX_PARMRK ;
 int LINUX_PARODD ;
 int LINUX_PENDIN ;
 void* LINUX_POSIX_VDISABLE ;
 int LINUX_TOSTOP ;
 size_t LINUX_VDISCARD ;
 size_t LINUX_VEOF ;
 size_t LINUX_VEOL ;
 size_t LINUX_VEOL2 ;
 size_t LINUX_VERASE ;
 size_t LINUX_VINTR ;
 size_t LINUX_VKILL ;
 size_t LINUX_VLNEXT ;
 size_t LINUX_VMIN ;
 size_t LINUX_VQUIT ;
 size_t LINUX_VREPRINT ;
 size_t LINUX_VSTART ;
 size_t LINUX_VSTOP ;
 size_t LINUX_VSUSP ;
 size_t LINUX_VTIME ;
 size_t LINUX_VWERASE ;
 int LINUX_XTABS ;
 int NOFLSH ;
 int ONLCR ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int PENDIN ;
 int TAB3 ;
 int TOSTOP ;
 size_t VDISCARD ;
 size_t VEOF ;
 size_t VEOL ;
 size_t VEOL2 ;
 size_t VERASE ;
 size_t VINTR ;
 size_t VKILL ;
 size_t VLNEXT ;
 size_t VMIN ;
 size_t VQUIT ;
 size_t VREPRINT ;
 size_t VSTART ;
 size_t VSTOP ;
 size_t VSUSP ;
 size_t VTIME ;
 size_t VWERASE ;
 scalar_t__ _POSIX_VDISABLE ;
 int bsd_to_linux_speed (int ,int ) ;
 int sptab ;

__attribute__((used)) static void
bsd_to_linux_termios(struct termios *bios, struct linux_termios *lios)
{
 int i;

 lios->c_iflag = 0;
 if (bios->c_iflag & IGNBRK)
  lios->c_iflag |= LINUX_IGNBRK;
 if (bios->c_iflag & BRKINT)
  lios->c_iflag |= LINUX_BRKINT;
 if (bios->c_iflag & IGNPAR)
  lios->c_iflag |= LINUX_IGNPAR;
 if (bios->c_iflag & PARMRK)
  lios->c_iflag |= LINUX_PARMRK;
 if (bios->c_iflag & INPCK)
  lios->c_iflag |= LINUX_INPCK;
 if (bios->c_iflag & ISTRIP)
  lios->c_iflag |= LINUX_ISTRIP;
 if (bios->c_iflag & INLCR)
  lios->c_iflag |= LINUX_INLCR;
 if (bios->c_iflag & IGNCR)
  lios->c_iflag |= LINUX_IGNCR;
 if (bios->c_iflag & ICRNL)
  lios->c_iflag |= LINUX_ICRNL;
 if (bios->c_iflag & IXON)
  lios->c_iflag |= LINUX_IXON;
 if (bios->c_iflag & IXANY)
  lios->c_iflag |= LINUX_IXANY;
 if (bios->c_iflag & IXOFF)
  lios->c_iflag |= LINUX_IXOFF;
 if (bios->c_iflag & IMAXBEL)
  lios->c_iflag |= LINUX_IMAXBEL;

 lios->c_oflag = 0;
 if (bios->c_oflag & OPOST)
  lios->c_oflag |= LINUX_OPOST;
 if (bios->c_oflag & ONLCR)
  lios->c_oflag |= LINUX_ONLCR;
 if (bios->c_oflag & TAB3)
  lios->c_oflag |= LINUX_XTABS;

 lios->c_cflag = bsd_to_linux_speed(bios->c_ispeed, sptab);
 lios->c_cflag |= (bios->c_cflag & CSIZE) >> 4;
 if (bios->c_cflag & CSTOPB)
  lios->c_cflag |= LINUX_CSTOPB;
 if (bios->c_cflag & CREAD)
  lios->c_cflag |= LINUX_CREAD;
 if (bios->c_cflag & PARENB)
  lios->c_cflag |= LINUX_PARENB;
 if (bios->c_cflag & PARODD)
  lios->c_cflag |= LINUX_PARODD;
 if (bios->c_cflag & HUPCL)
  lios->c_cflag |= LINUX_HUPCL;
 if (bios->c_cflag & CLOCAL)
  lios->c_cflag |= LINUX_CLOCAL;
 if (bios->c_cflag & CRTSCTS)
  lios->c_cflag |= LINUX_CRTSCTS;

 lios->c_lflag = 0;
 if (bios->c_lflag & ISIG)
  lios->c_lflag |= LINUX_ISIG;
 if (bios->c_lflag & ICANON)
  lios->c_lflag |= LINUX_ICANON;
 if (bios->c_lflag & ECHO)
  lios->c_lflag |= LINUX_ECHO;
 if (bios->c_lflag & ECHOE)
  lios->c_lflag |= LINUX_ECHOE;
 if (bios->c_lflag & ECHOK)
  lios->c_lflag |= LINUX_ECHOK;
 if (bios->c_lflag & ECHONL)
  lios->c_lflag |= LINUX_ECHONL;
 if (bios->c_lflag & NOFLSH)
  lios->c_lflag |= LINUX_NOFLSH;
 if (bios->c_lflag & TOSTOP)
  lios->c_lflag |= LINUX_TOSTOP;
 if (bios->c_lflag & ECHOCTL)
  lios->c_lflag |= LINUX_ECHOCTL;
 if (bios->c_lflag & ECHOPRT)
  lios->c_lflag |= LINUX_ECHOPRT;
 if (bios->c_lflag & ECHOKE)
  lios->c_lflag |= LINUX_ECHOKE;
 if (bios->c_lflag & FLUSHO)
  lios->c_lflag |= LINUX_FLUSHO;
 if (bios->c_lflag & PENDIN)
  lios->c_lflag |= LINUX_PENDIN;
 if (bios->c_lflag & IEXTEN)
  lios->c_lflag |= LINUX_IEXTEN;

 for (i=0; i<LINUX_NCCS; i++)
  lios->c_cc[i] = LINUX_POSIX_VDISABLE;
 lios->c_cc[LINUX_VINTR] = bios->c_cc[VINTR];
 lios->c_cc[LINUX_VQUIT] = bios->c_cc[VQUIT];
 lios->c_cc[LINUX_VERASE] = bios->c_cc[VERASE];
 lios->c_cc[LINUX_VKILL] = bios->c_cc[VKILL];
 lios->c_cc[LINUX_VEOF] = bios->c_cc[VEOF];
 lios->c_cc[LINUX_VEOL] = bios->c_cc[VEOL];
 lios->c_cc[LINUX_VMIN] = bios->c_cc[VMIN];
 lios->c_cc[LINUX_VTIME] = bios->c_cc[VTIME];
 lios->c_cc[LINUX_VEOL2] = bios->c_cc[VEOL2];
 lios->c_cc[LINUX_VSUSP] = bios->c_cc[VSUSP];
 lios->c_cc[LINUX_VSTART] = bios->c_cc[VSTART];
 lios->c_cc[LINUX_VSTOP] = bios->c_cc[VSTOP];
 lios->c_cc[LINUX_VREPRINT] = bios->c_cc[VREPRINT];
 lios->c_cc[LINUX_VDISCARD] = bios->c_cc[VDISCARD];
 lios->c_cc[LINUX_VWERASE] = bios->c_cc[VWERASE];
 lios->c_cc[LINUX_VLNEXT] = bios->c_cc[VLNEXT];

 for (i=0; i<LINUX_NCCS; i++) {
  if (i != LINUX_VMIN && i != LINUX_VTIME &&
      lios->c_cc[i] == _POSIX_VDISABLE)
   lios->c_cc[i] = LINUX_POSIX_VDISABLE;
 }
 lios->c_line = 0;
}
