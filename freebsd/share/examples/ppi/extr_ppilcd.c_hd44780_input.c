
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int HD_COMMAND ;
 int HD_READ ;
 int STROBE ;
 int debug (int,char*,int,char*) ;
 int hd_gdata (int) ;
 int hd_sctrl (int) ;

__attribute__((used)) static int
hd44780_input(int type)
{
    u_int8_t val;

    hd_sctrl(type | HD_READ | STROBE);
    hd_sctrl(type | HD_READ);
    hd_gdata(val);
    hd_sctrl(type | HD_READ | STROBE);

    debug(3, "0x%02x -> %s", val, (type == HD_COMMAND) ? "cmd " : "data");
    return(val);
}
