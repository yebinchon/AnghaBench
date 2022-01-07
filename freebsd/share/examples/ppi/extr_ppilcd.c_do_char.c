
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_driver {int (* l_putc ) (char) ;int (* l_command ) (char) ;} ;


 char CMD_BKSP ;
 char CMD_CLR ;
 char CMD_CR ;
 char CMD_HOME ;
 char CMD_NL ;
 char CMD_RESET ;
 scalar_t__ isprint (char) ;
 int stub1 (char) ;
 int stub2 (char) ;
 int stub3 (char) ;
 int stub4 (char) ;
 int stub5 (char) ;
 int stub6 (char) ;
 int stub7 (char) ;
 int stub8 (char) ;
 int stub9 (char) ;
 scalar_t__ vflag ;

__attribute__((used)) static void
do_char(struct lcd_driver *driver, char ch)
{
    static int esc = 0;

    if (esc) {
 switch(ch) {
 case 'b':
     driver->l_command(CMD_BKSP);
     break;
 case 'f':
     driver->l_command(CMD_CLR);
     break;
 case 'n':
     driver->l_command(CMD_NL);
     break;
 case 'r':
     driver->l_command(CMD_CR);
     break;
 case 'R':
     driver->l_command(CMD_RESET);
     break;
 case 'v':
     driver->l_command(CMD_HOME);
     break;
 case '\\':
     driver->l_putc('\\');
     break;
 default:
     driver->l_command(ch);
     break;
 }
 esc = 0;
    } else {
 if (ch == '\\') {
     esc = 1;
 } else {
     if (vflag || isprint(ch))
  driver->l_putc(ch);
 }
    }
}
