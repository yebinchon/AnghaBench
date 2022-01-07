
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct session {scalar_t__ cmd; int id; int port; int proxy_port; int server_ss; int orig_server_ss; int proxy_ss; int client_ss; } ;


 scalar_t__ CMD_EPRT ;
 scalar_t__ CMD_EPSV ;
 scalar_t__ CMD_NONE ;
 scalar_t__ CMD_PASV ;
 scalar_t__ CMD_PORT ;
 scalar_t__ EBUSY ;
 int LOG_CRIT ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int MIN_PORT ;
 int PF_IN ;
 int PF_NAT_PROXY_PORT_HIGH ;
 int PF_NAT_PROXY_PORT_LOW ;
 int PF_OUT ;
 int add_filter (int ,int ,struct sockaddr*,struct sockaddr*,int ) ;
 int add_nat (int ,struct sockaddr*,struct sockaddr*,int ,struct sockaddr*,int,int) ;
 int add_rdr (int ,struct sockaddr*,struct sockaddr*,int ,struct sockaddr*,int ) ;
 int do_commit () ;
 int do_rollback () ;
 scalar_t__ errno ;
 scalar_t__ fixed_server ;
 int linebuf ;
 int logmsg (int ,char*,int ,int ,...) ;
 int parse_port (scalar_t__) ;
 int pick_proxy_port () ;
 int prepare_commit (int ) ;
 int proxy_reply (scalar_t__,struct sockaddr*,int ) ;
 scalar_t__ rfc_mode ;
 struct sockaddr* sstosa (int *) ;
 int strerror (scalar_t__) ;
 int usleep (int) ;

int
allow_data_connection(struct session *s)
{
 struct sockaddr *client_sa, *orig_sa, *proxy_sa, *server_sa;
 int prepared = 0;
 client_sa = sstosa(&s->client_ss);
 server_sa = sstosa(&s->server_ss);
 proxy_sa = sstosa(&s->proxy_ss);
 if (fixed_server)


  orig_sa = sstosa(&s->orig_server_ss);
 else

  orig_sa = sstosa(&s->server_ss);


 if (s->cmd == CMD_PASV || s->cmd == CMD_EPSV) {
  s->port = parse_port(s->cmd);
  if (s->port < MIN_PORT) {
   logmsg(LOG_CRIT, "#%d bad port in '%s'", s->id,
       linebuf);
   return (0);
  }
  s->proxy_port = pick_proxy_port();
  logmsg(LOG_INFO, "#%d passive: client to server port %d"
      " via port %d", s->id, s->port, s->proxy_port);

  if (prepare_commit(s->id) == -1)
   goto fail;
  prepared = 1;

  proxy_reply(s->cmd, orig_sa, s->proxy_port);
  logmsg(LOG_DEBUG, "#%d proxy: %s", s->id, linebuf);



  if (add_rdr(s->id, client_sa, orig_sa, s->proxy_port,
      server_sa, s->port) == -1)
   goto fail;


  if (add_nat(s->id, client_sa, server_sa, s->port, proxy_sa,
      PF_NAT_PROXY_PORT_LOW, PF_NAT_PROXY_PORT_HIGH) == -1)
   goto fail;


  if (add_filter(s->id, PF_IN, client_sa, server_sa,
      s->port) == -1)
   goto fail;


  if (add_filter(s->id, PF_OUT, proxy_sa, server_sa,
      s->port) == -1)
   goto fail;
 }


 if (s->cmd == CMD_PORT || s->cmd == CMD_EPRT) {
  logmsg(LOG_INFO, "#%d active: server to client port %d"
      " via port %d", s->id, s->port, s->proxy_port);

  if (prepare_commit(s->id) == -1)
   goto fail;
  prepared = 1;



  if (add_rdr(s->id, server_sa, proxy_sa, s->proxy_port,
      client_sa, s->port) == -1)
   goto fail;



  if (rfc_mode && s->cmd == CMD_PORT) {

   if (add_nat(s->id, server_sa, client_sa, s->port,
       orig_sa, 20, 20) == -1)
    goto fail;
  } else {

   if (add_nat(s->id, server_sa, client_sa, s->port,
       orig_sa, PF_NAT_PROXY_PORT_LOW,
       PF_NAT_PROXY_PORT_HIGH) == -1)
        goto fail;
  }


  if (add_filter(s->id, PF_IN, server_sa, client_sa, s->port) ==
      -1)
   goto fail;


  if (add_filter(s->id, PF_OUT, orig_sa, client_sa, s->port) ==
      -1)
   goto fail;
 }


 if (prepared && (do_commit() == -1)) {
  if (errno != EBUSY)
   goto fail;

  usleep(5000);
  if (do_commit() == -1)
   goto fail;
 }

 s->cmd = CMD_NONE;
 s->port = 0;

 return (1);

 fail:
 logmsg(LOG_CRIT, "#%d pf operation failed: %s", s->id, strerror(errno));
 if (prepared)
  do_rollback();
 return (0);
}
