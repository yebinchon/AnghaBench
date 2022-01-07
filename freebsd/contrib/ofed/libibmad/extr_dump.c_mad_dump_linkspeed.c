
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,...) ;

void mad_dump_linkspeed(char *buf, int bufsz, void *val, int valsz)
{
 int speed = *(int *)val;

 switch (speed) {
 case 0:
  snprintf(buf, bufsz, "Extended speed");
  break;
 case 1:
  snprintf(buf, bufsz, "2.5 Gbps");
  break;
 case 2:
  snprintf(buf, bufsz, "5.0 Gbps");
  break;
 case 4:
  snprintf(buf, bufsz, "10.0 Gbps");
  break;
 default:
  snprintf(buf, bufsz, "undefined (%d)", speed);
  break;
 }
}
