
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,...) ;

void mad_dump_linkspeedext(char *buf, int bufsz, void *val, int valsz)
{
 int speed = *(int *)val;

 switch (speed) {
 case 0:
  snprintf(buf, bufsz, "No Extended Speed");
  break;
 case 1:
  snprintf(buf, bufsz, "14.0625 Gbps");
  break;
 case 2:
  snprintf(buf, bufsz, "25.78125 Gbps");
  break;
 default:
  snprintf(buf, bufsz, "undefined (%d)", speed);
  break;
 }
}
