
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rc_state {TYPE_1__* c; } ;
struct daemon_remote {int worker; } ;
typedef scalar_t__ ssize_t ;
typedef int pre ;
typedef int magic ;
typedef int buf ;
struct TYPE_8__ {int fd; scalar_t__ ssl; } ;
struct TYPE_7__ {int fd; } ;
typedef TYPE_2__ RES ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int ERR_clear_error () ;
 scalar_t__ SSL_ERROR_ZERO_RETURN ;
 scalar_t__ SSL_get_error (scalar_t__,int) ;
 int SSL_read (scalar_t__,char*,int) ;
 int UNBOUND_CONTROL_VERSION ;
 int VERB_DETAIL ;
 int VERB_QUERY ;
 int WSAEventSelect (int ,int *,int ) ;
 int WSAGetLastError () ;
 scalar_t__ errno ;
 int execute_cmd (struct daemon_remote*,TYPE_2__*,char*,int ) ;
 int fd_set_block (int ) ;
 int log_crypto_err (char*) ;
 int log_err (char*,int ) ;
 scalar_t__ recv (int ,char*,int,int ) ;
 int snprintf (char*,int,char*,int) ;
 int ssl_printf (TYPE_2__*,char*) ;
 int ssl_read_line (TYPE_2__*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strerror (scalar_t__) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int verbose (int ,char*,...) ;
 int wsa_strerror (int ) ;

__attribute__((used)) static void
handle_req(struct daemon_remote* rc, struct rc_state* s, RES* res)
{
 int r;
 char pre[10];
 char magic[7];
 char buf[1024];





 fd_set_block(s->c->fd);


 if(res->ssl) {
  ERR_clear_error();
  if((r=SSL_read(res->ssl, magic, (int)sizeof(magic)-1)) <= 0) {
   if(SSL_get_error(res->ssl, r) == SSL_ERROR_ZERO_RETURN)
    return;
   log_crypto_err("could not SSL_read");
   return;
  }
 } else {
  while(1) {
   ssize_t rr = recv(res->fd, magic, sizeof(magic)-1, 0);
   if(rr <= 0) {
    if(rr == 0) return;
    if(errno == EINTR || errno == EAGAIN)
     continue;

    log_err("could not recv: %s", strerror(errno));



    return;
   }
   r = (int)rr;
   break;
  }
 }
 magic[6] = 0;
 if( r != 6 || strncmp(magic, "UBCT", 4) != 0) {
  verbose(VERB_QUERY, "control connection has bad magic string");

  return;
 }


 if(!ssl_read_line(res, buf, sizeof(buf))) {
  return;
 }
 snprintf(pre, sizeof(pre), "UBCT%d ", UNBOUND_CONTROL_VERSION);
 if(strcmp(magic, pre) != 0) {
  verbose(VERB_QUERY, "control connection had bad "
   "version %s, cmd: %s", magic, buf);
  ssl_printf(res, "error version mismatch\n");
  return;
 }
 verbose(VERB_DETAIL, "control cmd: %s", buf);


 execute_cmd(rc, res, buf, rc->worker);
}
