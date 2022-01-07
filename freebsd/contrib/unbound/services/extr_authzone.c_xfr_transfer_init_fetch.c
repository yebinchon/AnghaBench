
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr_storage {int dummy; } ;
struct module_env {int scratch_buffer; int outnet; int rnd; int worker_base; } ;
struct auth_xfer {TYPE_2__* task_transfer; int name; } ;
struct auth_master {int file; int host; int ssl; int port; scalar_t__ http; scalar_t__ allow_notify; } ;
typedef int socklen_t ;
typedef int as ;
struct TYPE_4__ {scalar_t__ on_ixfr; scalar_t__ timer; int * cp; scalar_t__ id; TYPE_1__* scan_addr; struct auth_master* master; } ;
struct TYPE_3__ {int addr; int addrlen; } ;


 int AUTH_TRANSFER_TIMEOUT ;
 scalar_t__ VERB_ALGO ;
 int addr_to_str (struct sockaddr_storage*,int ,char*,int) ;
 int auth_xfer_transfer_http_callback ;
 int auth_xfer_transfer_tcp_callback ;
 int auth_xfer_transfer_timer_callback ;
 int authextstrtoaddr (int ,struct sockaddr_storage*,int *,char**) ;
 int comm_point_delete (int *) ;
 scalar_t__ comm_timer_create (int ,int ,struct auth_xfer*) ;
 int comm_timer_set (scalar_t__,struct timeval*) ;
 int dname_str (int ,char*) ;
 int log_err (char*,...) ;
 int memmove (struct sockaddr_storage*,int *,int ) ;
 int * outnet_comm_point_for_http (int ,int ,struct auth_xfer*,struct sockaddr_storage*,int ,int,int ,int ,int ) ;
 int * outnet_comm_point_for_tcp (int ,int ,struct auth_xfer*,struct sockaddr_storage*,int ,int ,int,int ,char*) ;
 int sockaddr_store_port (struct sockaddr_storage*,int ,int ) ;
 int * strchr (int ,char) ;
 int ub_random (int ) ;
 int verbose (scalar_t__,char*,char*,char*,...) ;
 scalar_t__ verbosity ;
 int xfr_create_ixfr_packet (struct auth_xfer*,int ,scalar_t__,struct auth_master*) ;

__attribute__((used)) static int
xfr_transfer_init_fetch(struct auth_xfer* xfr, struct module_env* env)
{
 struct sockaddr_storage addr;
 socklen_t addrlen = 0;
 struct auth_master* master = xfr->task_transfer->master;
 char *auth_name = ((void*)0);
 struct timeval t;
 int timeout;
 if(!master) return 0;
 if(master->allow_notify) return 0;


 if(xfr->task_transfer->scan_addr) {
  addrlen = xfr->task_transfer->scan_addr->addrlen;
  memmove(&addr, &xfr->task_transfer->scan_addr->addr, addrlen);
 } else {
  if(!authextstrtoaddr(master->host, &addr, &addrlen, &auth_name)) {



   char zname[255+1];
   dname_str(xfr->name, zname);
   log_err("%s: failed lookup, cannot transfer from master %s",
    zname, master->host);
   return 0;
  }
 }


 if(xfr->task_transfer->cp) {
  comm_point_delete(xfr->task_transfer->cp);
  xfr->task_transfer->cp = ((void*)0);
 }
 if(!xfr->task_transfer->timer) {
  xfr->task_transfer->timer = comm_timer_create(env->worker_base,
   auth_xfer_transfer_timer_callback, xfr);
  if(!xfr->task_transfer->timer) {
   log_err("malloc failure");
   return 0;
  }
 }
 timeout = AUTH_TRANSFER_TIMEOUT;

        t.tv_sec = timeout/1000;
        t.tv_usec = (timeout%1000)*1000;


 if(master->http) {



  xfr->task_transfer->on_ixfr = 0;
  if(strchr(master->host, '@') == ((void*)0))
   sockaddr_store_port(&addr, addrlen, master->port);
  xfr->task_transfer->cp = outnet_comm_point_for_http(
   env->outnet, auth_xfer_transfer_http_callback, xfr,
   &addr, addrlen, -1, master->ssl, master->host,
   master->file);
  if(!xfr->task_transfer->cp) {
   char zname[255+1], as[256];
   dname_str(xfr->name, zname);
   addr_to_str(&addr, addrlen, as, sizeof(as));
   verbose(VERB_ALGO, "cannot create http cp "
    "connection for %s to %s", zname, as);
   return 0;
  }
  comm_timer_set(xfr->task_transfer->timer, &t);
  if(verbosity >= VERB_ALGO) {
   char zname[255+1], as[256];
   dname_str(xfr->name, zname);
   addr_to_str(&addr, addrlen, as, sizeof(as));
   verbose(VERB_ALGO, "auth zone %s transfer next HTTP fetch from %s started", zname, as);
  }
  return 1;
 }




 xfr->task_transfer->id = (uint16_t)(ub_random(env->rnd)&0xffff);
 xfr_create_ixfr_packet(xfr, env->scratch_buffer,
  xfr->task_transfer->id, master);


 xfr->task_transfer->cp = outnet_comm_point_for_tcp(env->outnet,
  auth_xfer_transfer_tcp_callback, xfr, &addr, addrlen,
  env->scratch_buffer, -1,
  auth_name != ((void*)0), auth_name);
 if(!xfr->task_transfer->cp) {
  char zname[255+1], as[256];
   dname_str(xfr->name, zname);
  addr_to_str(&addr, addrlen, as, sizeof(as));
  verbose(VERB_ALGO, "cannot create tcp cp connection for "
   "xfr %s to %s", zname, as);
  return 0;
 }
 comm_timer_set(xfr->task_transfer->timer, &t);
 if(verbosity >= VERB_ALGO) {
  char zname[255+1], as[256];
   dname_str(xfr->name, zname);
  addr_to_str(&addr, addrlen, as, sizeof(as));
  verbose(VERB_ALGO, "auth zone %s transfer next %s fetch from %s started", zname,
   (xfr->task_transfer->on_ixfr?"IXFR":"AXFR"), as);
 }
 return 1;
}
