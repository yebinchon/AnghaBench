
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct query_info {int qname_len; int * local_alias; int qtype; int qclass; int * qname; } ;
struct module_env {int mesh; int * scratch_buffer; } ;
struct edns_data {int edns_present; int udp_size; int * opt_list; int bits; scalar_t__ edns_version; scalar_t__ ext_rcode; } ;
struct auth_xfer {int lock; int name; TYPE_1__* task_transfer; int dclass; } ;
struct auth_master {int host; scalar_t__ allow_notify; } ;
typedef int socklen_t ;
typedef int sldns_buffer ;
typedef int dname ;
typedef int buf1 ;
struct TYPE_2__ {scalar_t__ lookup_aaaa; struct auth_master* lookup_target; } ;


 int BIT_RD ;
 int EDNS_DO ;
 int LDNS_MAX_DOMAINLEN ;
 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 scalar_t__ VERB_ALGO ;
 int auth_xfer_transfer_lookup_callback ;
 int dname_str (int ,char*) ;
 scalar_t__ extstrtoaddr (int ,struct sockaddr_storage*,int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*,int ) ;
 int log_query_info (scalar_t__,char*,struct query_info*) ;
 int mesh_new_callback (int ,struct query_info*,int,struct edns_data*,int *,int ,int *,struct auth_xfer*) ;
 int sldns_buffer_capacity (int *) ;
 scalar_t__ sldns_str2wire_dname_buf (int ,int *,int*) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
xfr_transfer_lookup_host(struct auth_xfer* xfr, struct module_env* env)
{
 struct sockaddr_storage addr;
 socklen_t addrlen = 0;
 struct auth_master* master = xfr->task_transfer->lookup_target;
 struct query_info qinfo;
 uint16_t qflags = BIT_RD;
 uint8_t dname[LDNS_MAX_DOMAINLEN+1];
 struct edns_data edns;
 sldns_buffer* buf = env->scratch_buffer;
 if(!master) return 0;
 if(extstrtoaddr(master->host, &addr, &addrlen)) {

  return 0;
 }
 if(master->allow_notify)
  return 0;




 qinfo.qname_len = sizeof(dname);
 if(sldns_str2wire_dname_buf(master->host, dname, &qinfo.qname_len)
  != 0) {
  log_err("cannot parse host name of master %s", master->host);
  return 0;
 }
 qinfo.qname = dname;
 qinfo.qclass = xfr->dclass;
 qinfo.qtype = LDNS_RR_TYPE_A;
 if(xfr->task_transfer->lookup_aaaa)
  qinfo.qtype = LDNS_RR_TYPE_AAAA;
 qinfo.local_alias = ((void*)0);
 if(verbosity >= VERB_ALGO) {
  char buf1[512];
  char buf2[LDNS_MAX_DOMAINLEN+1];
  dname_str(xfr->name, buf2);
  snprintf(buf1, sizeof(buf1), "auth zone %s: master lookup"
   " for task_transfer", buf2);
  log_query_info(VERB_ALGO, buf1, &qinfo);
 }
 edns.edns_present = 1;
 edns.ext_rcode = 0;
 edns.edns_version = 0;
 edns.bits = EDNS_DO;
 edns.opt_list = ((void*)0);
 if(sldns_buffer_capacity(buf) < 65535)
  edns.udp_size = (uint16_t)sldns_buffer_capacity(buf);
 else edns.udp_size = 65535;



 lock_basic_unlock(&xfr->lock);
 if(!mesh_new_callback(env->mesh, &qinfo, qflags, &edns, buf, 0,
  &auth_xfer_transfer_lookup_callback, xfr)) {
  lock_basic_lock(&xfr->lock);
  log_err("out of memory lookup up master %s", master->host);
  return 0;
 }
 lock_basic_lock(&xfr->lock);
 return 1;
}
