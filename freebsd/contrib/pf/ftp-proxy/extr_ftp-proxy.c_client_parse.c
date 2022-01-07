
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {scalar_t__ cmd; scalar_t__ port; } ;


 scalar_t__ CMD_EPRT ;
 scalar_t__ CMD_NONE ;
 scalar_t__ CMD_PORT ;
 int allow_data_connection (struct session*) ;
 scalar_t__ anonymous_only ;
 int client_parse_anon (struct session*) ;
 int client_parse_cmd (struct session*) ;
 char* linebuf ;
 int linelen ;

int
client_parse(struct session *s)
{

 s->cmd = CMD_NONE;
 s->port = 0;


 if (linelen < 4)
  return (1);

 if (linebuf[0] == 'P' || linebuf[0] == 'p' ||
     linebuf[0] == 'E' || linebuf[0] == 'e') {
  if (!client_parse_cmd(s))
   return (0);







  if (s->cmd == CMD_PORT || s->cmd == CMD_EPRT)
   return (allow_data_connection(s));
 }

 if (anonymous_only && (linebuf[0] == 'U' || linebuf[0] == 'u'))
  return (client_parse_anon(s));

 return (1);
}
