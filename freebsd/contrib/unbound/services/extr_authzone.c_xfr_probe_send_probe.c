
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int dummy; } ;
struct module_env {int scratch_buffer; int worker_base; int outnet; int rnd; TYPE_2__* cfg; } ;
struct auth_xfer {TYPE_3__* task_probe; int name; } ;
struct auth_master {int host; scalar_t__ http; scalar_t__ allow_notify; } ;
typedef int socklen_t ;
typedef int as ;
struct TYPE_6__ {int cp_is_ip6; int timeout; scalar_t__ timer; int * cp; scalar_t__ id; TYPE_1__* scan_addr; } ;
struct TYPE_5__ {scalar_t__ ssl_port; int port; } ;
struct TYPE_4__ {int addr; int addrlen; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int AUTH_PROBE_TIMEOUT ;
 scalar_t__ VERB_ALGO ;
 scalar_t__ addr_is_ip6 (struct sockaddr_storage*,int ) ;
 int addr_to_str (struct sockaddr_storage*,int ,char*,int) ;
 int auth_xfer_probe_timer_callback ;
 int auth_xfer_probe_udp_callback ;
 int authextstrtoaddr (int ,struct sockaddr_storage*,int *,char**) ;
 int comm_point_delete (int *) ;
 int comm_point_send_udp_msg (int *,int ,struct sockaddr*,int ) ;
 scalar_t__ comm_timer_create (int ,int ,struct auth_xfer*) ;
 int comm_timer_set (scalar_t__,struct timeval*) ;
 int dname_str (int ,char*) ;
 void* htons (int ) ;
 int log_err (char*,...) ;
 int memmove (struct sockaddr_storage*,int *,int ) ;
 scalar_t__ ntohs (void*) ;
 int * outnet_comm_point_for_udp (int ,int ,struct auth_xfer*,struct sockaddr_storage*,int ) ;
 int ub_random (int ) ;
 int verbose (scalar_t__,char*,char*,char*) ;
 scalar_t__ verbosity ;
 int xfr_create_soa_probe_packet (struct auth_xfer*,int ,scalar_t__) ;
 struct auth_master* xfr_probe_current_master (struct auth_xfer*) ;

__attribute__((used)) static int
xfr_probe_send_probe(struct auth_xfer* xfr, struct module_env* env,
 int timeout)
{
 struct sockaddr_storage addr;
 socklen_t addrlen = 0;
 struct timeval t;

 struct auth_master* master = xfr_probe_current_master(xfr);
 char *auth_name = ((void*)0);
 if(!master) return 0;
 if(master->allow_notify) return 0;
 if(master->http) return 0;



 if(xfr->task_probe->scan_addr) {
  addrlen = xfr->task_probe->scan_addr->addrlen;
  memmove(&addr, &xfr->task_probe->scan_addr->addr, addrlen);
 } else {
  if(!authextstrtoaddr(master->host, &addr, &addrlen, &auth_name)) {



   char zname[255+1];
   dname_str(xfr->name, zname);
   log_err("%s: failed lookup, cannot probe to master %s",
    zname, master->host);
   return 0;
  }
  if (auth_name != ((void*)0)) {
   if (addr.ss_family == AF_INET
   && ntohs(((struct sockaddr_in *)&addr)->sin_port)
              == env->cfg->ssl_port)
    ((struct sockaddr_in *)&addr)->sin_port
     = htons(env->cfg->port);
   else if (addr.ss_family == AF_INET6
   && ntohs(((struct sockaddr_in6 *)&addr)->sin6_port)
              == env->cfg->ssl_port)
                         ((struct sockaddr_in6 *)&addr)->sin6_port
     = htons(env->cfg->port);
  }
 }




 if(timeout == AUTH_PROBE_TIMEOUT)
  xfr->task_probe->id = (uint16_t)(ub_random(env->rnd)&0xffff);
 xfr_create_soa_probe_packet(xfr, env->scratch_buffer,
  xfr->task_probe->id);

 if(xfr->task_probe->cp &&
  ((xfr->task_probe->cp_is_ip6 && !addr_is_ip6(&addr, addrlen)) ||
  (!xfr->task_probe->cp_is_ip6 && addr_is_ip6(&addr, addrlen)))
  ) {
  comm_point_delete(xfr->task_probe->cp);
  xfr->task_probe->cp = ((void*)0);
 }
 if(!xfr->task_probe->cp) {
  if(addr_is_ip6(&addr, addrlen))
   xfr->task_probe->cp_is_ip6 = 1;
  else xfr->task_probe->cp_is_ip6 = 0;
  xfr->task_probe->cp = outnet_comm_point_for_udp(env->outnet,
   auth_xfer_probe_udp_callback, xfr, &addr, addrlen);
  if(!xfr->task_probe->cp) {
   char zname[255+1], as[256];
   dname_str(xfr->name, zname);
   addr_to_str(&addr, addrlen, as, sizeof(as));
   verbose(VERB_ALGO, "cannot create udp cp for "
    "probe %s to %s", zname, as);
   return 0;
  }
 }
 if(!xfr->task_probe->timer) {
  xfr->task_probe->timer = comm_timer_create(env->worker_base,
   auth_xfer_probe_timer_callback, xfr);
  if(!xfr->task_probe->timer) {
   log_err("malloc failure");
   return 0;
  }
 }


 if(!comm_point_send_udp_msg(xfr->task_probe->cp, env->scratch_buffer,
  (struct sockaddr*)&addr, addrlen)) {
  char zname[255+1], as[256];
  dname_str(xfr->name, zname);
  addr_to_str(&addr, addrlen, as, sizeof(as));
  verbose(VERB_ALGO, "failed to send soa probe for %s to %s",
   zname, as);
  return 0;
 }
 if(verbosity >= VERB_ALGO) {
  char zname[255+1], as[256];
  dname_str(xfr->name, zname);
  addr_to_str(&addr, addrlen, as, sizeof(as));
  verbose(VERB_ALGO, "auth zone %s soa probe sent to %s", zname,
   as);
 }
 xfr->task_probe->timeout = timeout;

 t.tv_sec = timeout/1000;
 t.tv_usec = (timeout%1000)*1000;

 comm_timer_set(xfr->task_probe->timer, &t);

 return 1;
}
