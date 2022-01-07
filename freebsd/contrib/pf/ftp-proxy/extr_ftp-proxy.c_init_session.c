
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int client_fd; int server_fd; char* cbuf; char* sbuf; scalar_t__ port; int cmd; int * server_bufev; int * client_bufev; scalar_t__ sbuf_valid; scalar_t__ cbuf_valid; scalar_t__ id; } ;


 int CMD_NONE ;
 int LIST_INSERT_HEAD (int *,struct session*,int ) ;
 struct session* calloc (int,int) ;
 int entry ;
 int id_count ;
 int session_count ;
 int sessions ;

struct session *
init_session(void)
{
 struct session *s;

 s = calloc(1, sizeof(struct session));
 if (s == ((void*)0))
  return (((void*)0));

 s->id = id_count++;
 s->client_fd = -1;
 s->server_fd = -1;
 s->cbuf[0] = '\0';
 s->cbuf_valid = 0;
 s->sbuf[0] = '\0';
 s->sbuf_valid = 0;
 s->client_bufev = ((void*)0);
 s->server_bufev = ((void*)0);
 s->cmd = CMD_NONE;
 s->port = 0;

 LIST_INSERT_HEAD(&sessions, s, entry);
 session_count++;

 return (s);
}
