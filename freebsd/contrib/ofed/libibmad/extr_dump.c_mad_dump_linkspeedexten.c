
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_linkspeedext (char*,int,int) ;
 int sprintf (char*,char*,char*) ;

void mad_dump_linkspeedexten(char *buf, int bufsz, void *val, int valsz)
{
 int speed = *(int *)val;

 if (speed == 30) {
  sprintf(buf, "%s", "Extended link speeds disabled");
  return;
 }
 dump_linkspeedext(buf, bufsz, speed);
}
