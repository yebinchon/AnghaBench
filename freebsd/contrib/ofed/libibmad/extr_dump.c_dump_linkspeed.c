
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snprintf (char*,int,char*,...) ;

__attribute__((used)) static void dump_linkspeed(char *buf, int bufsz, int speed)
{
 int n = 0;

 if (speed & 0x1)
  n += snprintf(buf + n, bufsz - n, "2.5 Gbps or ");
 if (n < bufsz && (speed & 0x2))
  n += snprintf(buf + n, bufsz - n, "5.0 Gbps or ");
 if (n < bufsz && (speed & 0x4))
  n += snprintf(buf + n, bufsz - n, "10.0 Gbps or ");

 if (n >= bufsz)
  return;
 else if (speed == 0 || (speed >> 3)) {
  n += snprintf(buf + n, bufsz - n, "undefined (%d)", speed);
  if (n >= bufsz)
   return;
 } else if (bufsz > 3) {
  buf[n - 4] = '\0';
  n -= 4;
 }

 switch (speed) {
 case 1:
 case 3:
 case 5:
 case 7:
  break;
 default:
  if (!(speed >> 3))
   snprintf(buf + n, bufsz - n, " (IBA extension)");
  break;
 }
}
