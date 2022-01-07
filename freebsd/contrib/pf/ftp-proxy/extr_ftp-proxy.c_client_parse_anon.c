
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int client_bufev; int id; } ;


 int LOG_DEBUG ;
 int bufferevent_write (int ,char*,scalar_t__) ;
 char* linebuf ;
 scalar_t__ linelen ;
 int logmsg (int ,char*,int ,char*) ;
 int snprintf (char*,int,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

int
client_parse_anon(struct session *s)
{
 if (strcasecmp("USER ftp\r\n", linebuf) != 0 &&
     strcasecmp("USER anonymous\r\n", linebuf) != 0) {
  snprintf(linebuf, sizeof linebuf,
      "500 Only anonymous FTP allowed\r\n");
  logmsg(LOG_DEBUG, "#%d proxy: %s", s->id, linebuf);


  linelen = strlen(linebuf);
  bufferevent_write(s->client_bufev, linebuf, linelen);


  linebuf[0] = '\0';
  linelen = 0;
 }

 return (1);
}
