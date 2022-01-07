
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int snprintf (char*,size_t,char*,double) ;

__attribute__((used)) static void
convert_sff_temp(char *buf, size_t size, uint8_t *xbuf)
{
 double d;

 d = (double)xbuf[0];
 d += (double)xbuf[1] / 256;

 snprintf(buf, size, "%.2f C", d);
}
