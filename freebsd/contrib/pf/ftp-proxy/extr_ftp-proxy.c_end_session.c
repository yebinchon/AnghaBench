
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct session {int client_fd; int server_fd; int id; TYPE_1__* server_bufev; TYPE_1__* client_bufev; } ;
struct TYPE_2__ {int output; } ;


 int LIST_REMOVE (struct session*,int ) ;
 int LOG_ERR ;
 int LOG_INFO ;
 int bufferevent_free (TYPE_1__*) ;
 int close (int) ;
 int do_commit () ;
 int do_rollback () ;
 int entry ;
 int errno ;
 int evbuffer_write (int ,int) ;
 int free (struct session*) ;
 int logmsg (int ,char*,int ,...) ;
 int prepare_commit (int ) ;
 int session_count ;
 int strerror (int) ;

void
end_session(struct session *s)
{
 int serr;

 logmsg(LOG_INFO, "#%d ending session", s->id);


 if (s->client_bufev && s->client_fd != -1)
  evbuffer_write(s->client_bufev->output, s->client_fd);
 if (s->server_bufev && s->server_fd != -1)
  evbuffer_write(s->server_bufev->output, s->server_fd);

 if (s->client_fd != -1)
  close(s->client_fd);
 if (s->server_fd != -1)
  close(s->server_fd);

 if (s->client_bufev)
  bufferevent_free(s->client_bufev);
 if (s->server_bufev)
  bufferevent_free(s->server_bufev);


 serr = 0;
 if (prepare_commit(s->id) == -1)
  serr = errno;
 else if (do_commit() == -1) {
  serr = errno;
  do_rollback();
 }
 if (serr)
  logmsg(LOG_ERR, "#%d pf rule removal failed: %s", s->id,
      strerror(serr));

 LIST_REMOVE(s, entry);
 free(s);
 session_count--;
}
