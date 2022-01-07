
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int16_t ;






 char* linebuf ;
 int linelen ;
 int sscanf (char*,char*,unsigned int*,...) ;

u_int16_t
parse_port(int mode)
{
 unsigned int port, v[6];
 int n;
 char *p;


 for (p = linebuf + linelen; p > linebuf; p--)
  if (*p == ' ' || *p == '(')
   break;
 if (p == linebuf)
  return (0);

 switch (mode) {
 case 128:
  n = sscanf(p, " %u,%u,%u,%u,%u,%u", &v[0], &v[1], &v[2],
      &v[3], &v[4], &v[5]);
  if (n == 6 && v[0] < 256 && v[1] < 256 && v[2] < 256 &&
      v[3] < 256 && v[4] < 256 && v[5] < 256)
   return ((v[4] << 8) | v[5]);
  break;
 case 129:
  n = sscanf(p, "(%u,%u,%u,%u,%u,%u)", &v[0], &v[1], &v[2],
      &v[3], &v[4], &v[5]);
  if (n == 6 && v[0] < 256 && v[1] < 256 && v[2] < 256 &&
      v[3] < 256 && v[4] < 256 && v[5] < 256)
   return ((v[4] << 8) | v[5]);
  break;
 case 130:
  n = sscanf(p, "(|||%u|)", &port);
  if (n == 1 && port < 65536)
   return (port);
  break;
 case 131:
  n = sscanf(p, " |1|%u.%u.%u.%u|%u|", &v[0], &v[1], &v[2],
      &v[3], &port);
  if (n == 5 && v[0] < 256 && v[1] < 256 && v[2] < 256 &&
      v[3] < 256 && port < 65536)
   return (port);
  n = sscanf(p, " |2|%*[a-fA-F0-9:]|%u|", &port);
  if (n == 1 && port < 65536)
   return (port);
  break;
 default:
  return (0);
 }

 return (0);
}
