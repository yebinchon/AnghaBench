
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBWARN (char*,int) ;
 int snprintf (char*,int,char*,...) ;

void mad_dump_linkwidth(char *buf, int bufsz, void *val, int valsz)
{
 int width = *(int *)val;

 switch (width) {
 case 1:
  snprintf(buf, bufsz, "1X");
  break;
 case 2:
  snprintf(buf, bufsz, "4X");
  break;
 case 4:
  snprintf(buf, bufsz, "8X");
  break;
 case 8:
  snprintf(buf, bufsz, "12X");
  break;
 case 16:
  snprintf(buf, bufsz, "2X");
  break;
 default:
  IBWARN("bad width %d", width);
  snprintf(buf, bufsz, "undefined (%d)", width);
  break;
 }
}
