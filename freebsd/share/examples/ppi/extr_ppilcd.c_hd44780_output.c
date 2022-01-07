
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int HD_COMMAND ;
 int HD_WRITE ;
 int STROBE ;
 int debug (int,char*,char*,int) ;
 int hd_sctrl (int) ;
 int hd_sdata (int ) ;

__attribute__((used)) static void
hd44780_output(int type, int data)
{
    debug(3, "%s -> 0x%02x", (type == HD_COMMAND) ? "cmd " : "data", data);
    hd_sctrl(type | HD_WRITE | STROBE);
    hd_sctrl(type | HD_WRITE);
    hd_sdata((u_int8_t) data);
    hd_sctrl(type | HD_WRITE | STROBE);
}
