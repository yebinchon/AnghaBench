
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,...) ;

void mad_dump_portstate(char *buf, int bufsz, void *val, int valsz)
{
 int state = *(int *)val;

 switch (state) {
 case 0:
  snprintf(buf, bufsz, "NoChange");
  break;
 case 1:
  snprintf(buf, bufsz, "Down");
  break;
 case 2:
  snprintf(buf, bufsz, "Initialize");
  break;
 case 3:
  snprintf(buf, bufsz, "Armed");
  break;
 case 4:
  snprintf(buf, bufsz, "Active");
  break;
 default:
  snprintf(buf, bufsz, "?(%d)", state);
 }
}
