
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,...) ;

void mad_dump_mtu(char *buf, int bufsz, void *val, int valsz)
{
 int mtu = *(int *)val;

 switch (mtu) {
 case 1:
  snprintf(buf, bufsz, "256");
  break;
 case 2:
  snprintf(buf, bufsz, "512");
  break;
 case 3:
  snprintf(buf, bufsz, "1024");
  break;
 case 4:
  snprintf(buf, bufsz, "2048");
  break;
 case 5:
  snprintf(buf, bufsz, "4096");
  break;
 default:
  snprintf(buf, bufsz, "?(%d)", mtu);
 }
}
