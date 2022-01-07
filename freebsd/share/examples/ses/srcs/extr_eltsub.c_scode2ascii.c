
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *
scode2ascii(u_char code)
{
 static char rbuf[32];
 switch (code & 0xf) {
 case 128:
  sprintf(rbuf, "Unsupported");
  break;
 case 131:
  sprintf(rbuf, "OK");
  break;
 case 136:
  sprintf(rbuf, "Critical");
  break;
 case 134:
  sprintf(rbuf, "Noncritical");
  break;
 case 129:
  sprintf(rbuf, "Unrecoverable");
  break;
 case 132:
  sprintf(rbuf, "Not Installed");
  break;
 case 130:
  sprintf(rbuf, "Unknown");
  break;
 case 133:
  sprintf(rbuf, "Not Available");
  break;
 case 135:
  sprintf(rbuf, "No Access Allowed");
  break;
 default:
  sprintf(rbuf, "<Status 0x%x>", code & 0xf);
  break;
 }
 return (rbuf);
}
