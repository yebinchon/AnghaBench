
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;




 int sprintf (char*,char*,unsigned int) ;

const char *
proto_name(u_short proto)
{
 static char buf[12];
 switch (proto) {
 case 128: return "pap";
 case 129: return "chap";
 }
 sprintf(buf, "0x%x", (unsigned)proto);
 return buf;
}
