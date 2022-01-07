
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
struct linux_termios {int * c_cc; int c_lflag; int c_cflag; int c_oflag; int c_iflag; } ;
struct linux_termio {int c_cc; int c_lflag; int c_cflag; int c_oflag; int c_iflag; } ;


 int LINUX_NCC ;
 int LINUX_NCCS ;
 int LINUX_POSIX_VDISABLE ;
 int linux_to_bsd_termios (struct linux_termios*,struct termios*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
linux_to_bsd_termio(struct linux_termio *lio, struct termios *bios)
{
 struct linux_termios lios;
 int i;

 lios.c_iflag = lio->c_iflag;
 lios.c_oflag = lio->c_oflag;
 lios.c_cflag = lio->c_cflag;
 lios.c_lflag = lio->c_lflag;
 for (i=LINUX_NCC; i<LINUX_NCCS; i++)
  lios.c_cc[i] = LINUX_POSIX_VDISABLE;
 memcpy(lios.c_cc, lio->c_cc, LINUX_NCC);
 linux_to_bsd_termios(&lios, bios);
}
