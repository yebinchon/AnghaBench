
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
 int HD_COMMAND ;
 int HD_DATA ;
 int debug (int,char*,int,char*,char*,char*) ;
 int hd44780_input (int ) ;
 int hd44780_output (int ,int) ;
 int hd_blink ;
 int hd_cursor ;
 int hd_font ;
 int hd_lines ;
 int isprint (int) ;
 int usleep (int) ;
 int warnx (char*,int) ;

__attribute__((used)) static void
hd44780_command(int cmd)
{
    u_int8_t val;

    switch (cmd) {
    case 128:
 debug(1, "hd44780: reset to %d lines, %s font,%s%s cursor",
       hd_lines, hd_font ? "5x10" : "5x7", hd_cursor ? "" : " no", hd_blink ? " blinking" : "");
 val = 0x30;
 if (hd_lines == 2)
     val |= 0x08;
 if (hd_font)
     val |= 0x04;
 hd44780_output(HD_COMMAND, val);
 usleep(10000);
 hd44780_output(HD_COMMAND, val);
 usleep(1000);
 hd44780_output(HD_COMMAND, val);
 usleep(1000);
 val = 0x08;
 hd44780_output(HD_COMMAND, val);
 usleep(1000);
 val |= 0x04;
 if (hd_cursor)
     val |= 0x02;
 if (hd_blink)
     val |= 0x01;
 hd44780_output(HD_COMMAND, val);
 usleep(1000);
 hd44780_output(HD_COMMAND, 0x06);
 usleep(1000);


    case 132:
 hd44780_output(HD_COMMAND, 0x01);
 usleep(2000);
 break;

    case 133:
 hd44780_output(HD_DATA, 0x10);
 break;

    case 129:
 if (hd_lines == 2)
     hd44780_output(HD_COMMAND, 0xc0);
 break;

    case 131:

 val = hd44780_input(HD_COMMAND) & 0x3f;
 hd44780_output(HD_COMMAND, 0x80 | val);
 break;

    case 130:
 hd44780_output(HD_COMMAND, 0x02);
 usleep(2000);
 break;

    default:
 if (isprint(cmd)) {
     warnx("unknown command %c", cmd);
 } else {
     warnx("unknown command 0x%x", cmd);
 }
    }
    usleep(40);
}
