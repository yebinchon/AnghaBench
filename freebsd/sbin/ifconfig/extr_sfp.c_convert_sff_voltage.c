
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int snprintf (char*,size_t,char*,double) ;

__attribute__((used)) static void
convert_sff_voltage(char *buf, size_t size, uint8_t *xbuf)
{
 double d;

 d = (double)((xbuf[0] << 8) | xbuf[1]);
 snprintf(buf, size, "%.2f Volts", d / 10000);
}
