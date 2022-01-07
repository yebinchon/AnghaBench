
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
struct linux_termios {int c_cc; int c_line; int c_lflag; int c_cflag; int c_oflag; int c_iflag; } ;
struct linux_termio {int c_cc; int c_line; int c_lflag; int c_cflag; int c_oflag; int c_iflag; } ;


 int LINUX_NCC ;
 int bsd_to_linux_termios (struct termios*,struct linux_termios*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct linux_termio*,int ,int) ;

__attribute__((used)) static void
bsd_to_linux_termio(struct termios *bios, struct linux_termio *lio)
{
 struct linux_termios lios;

 memset(lio, 0, sizeof(*lio));
 bsd_to_linux_termios(bios, &lios);
 lio->c_iflag = lios.c_iflag;
 lio->c_oflag = lios.c_oflag;
 lio->c_cflag = lios.c_cflag;
 lio->c_lflag = lios.c_lflag;
 lio->c_line = lios.c_line;
 memcpy(lio->c_cc, lios.c_cc, LINUX_NCC);
}
