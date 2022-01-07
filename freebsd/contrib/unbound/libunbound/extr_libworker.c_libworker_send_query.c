
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct query_info {int dummy; } ;
struct outbound_entry {int qsent; struct module_qstate* qstate; } ;
struct module_qstate {TYPE_3__* env; int region; } ;
struct libworker {TYPE_2__* back; } ;
typedef int socklen_t ;
struct TYPE_6__ {TYPE_1__* cfg; scalar_t__ worker; } ;
struct TYPE_5__ {int udp_buff; } ;
struct TYPE_4__ {int tcp_upstream; } ;


 int libworker_handle_service_reply ;
 int outnet_serviced_query (TYPE_2__*,struct query_info*,int ,int,int,int,int ,int,char*,struct sockaddr_storage*,int ,int *,size_t,struct module_qstate*,int ,struct outbound_entry*,int ,TYPE_3__*) ;
 scalar_t__ regional_alloc (int ,int) ;

struct outbound_entry* libworker_send_query(struct query_info* qinfo,
 uint16_t flags, int dnssec, int want_dnssec, int nocaps,
 struct sockaddr_storage* addr, socklen_t addrlen, uint8_t* zone,
 size_t zonelen, int ssl_upstream, char* tls_auth_name,
 struct module_qstate* q)
{
 struct libworker* w = (struct libworker*)q->env->worker;
 struct outbound_entry* e = (struct outbound_entry*)regional_alloc(
  q->region, sizeof(*e));
 if(!e)
  return ((void*)0);
 e->qstate = q;
 e->qsent = outnet_serviced_query(w->back, qinfo, flags, dnssec,
  want_dnssec, nocaps, q->env->cfg->tcp_upstream, ssl_upstream,
  tls_auth_name, addr, addrlen, zone, zonelen, q,
  libworker_handle_service_reply, e, w->back->udp_buff, q->env);
 if(!e->qsent) {
  return ((void*)0);
 }
 return e;
}
