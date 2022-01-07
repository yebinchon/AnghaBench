
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int u_int ;
struct sockaddr {int sa_family; } ;


 int AF_INET ;
 int AF_INET6 ;




 int LOG_ERR ;
 char* linebuf ;
 int linelen ;
 int logmsg (int ,char*,int) ;
 int snprintf (char*,int,char*,...) ;
 char* sock_ntop (struct sockaddr*) ;

void
proxy_reply(int cmd, struct sockaddr *sa, u_int16_t port)
{
 u_int i;
 int r = 0;

 switch (cmd) {
 case 128:
  r = snprintf(linebuf, sizeof linebuf,
      "PORT %s,%u,%u\r\n", sock_ntop(sa), port / 256,
      port % 256);
  break;
 case 129:
  r = snprintf(linebuf, sizeof linebuf,
      "227 Entering Passive Mode (%s,%u,%u)\r\n", sock_ntop(sa),
          port / 256, port % 256);
  break;
 case 131:
  if (sa->sa_family == AF_INET)
   r = snprintf(linebuf, sizeof linebuf,
       "EPRT |1|%s|%u|\r\n", sock_ntop(sa), port);
  else if (sa->sa_family == AF_INET6)
   r = snprintf(linebuf, sizeof linebuf,
       "EPRT |2|%s|%u|\r\n", sock_ntop(sa), port);
  break;
 case 130:
  r = snprintf(linebuf, sizeof linebuf,
      "229 Entering Extended Passive Mode (|||%u|)\r\n", port);
  break;
 }

 if (r < 0 || ((u_int)r) >= sizeof linebuf) {
  logmsg(LOG_ERR, "proxy_reply failed: %d", r);
  linebuf[0] = '\0';
  linelen = 0;
  return;
 }
 linelen = (size_t)r;

 if (cmd == 128 || cmd == 129) {

  for (i = 0; i < linelen; i++)
   if (linebuf[i] == '.')
    linebuf[i] = ',';
 }
}
