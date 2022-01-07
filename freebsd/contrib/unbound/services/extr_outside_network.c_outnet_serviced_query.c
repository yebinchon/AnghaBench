
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct serviced_query {struct serviced_query* cblist; struct serviced_query* next; void* cb_arg; int * cb; struct serviced_query* zone; struct serviced_query* qbuf; } ;
struct service_callback {struct service_callback* cblist; struct service_callback* next; void* cb_arg; int * cb; struct service_callback* zone; struct service_callback* qbuf; } ;
struct query_info {scalar_t__ qtype; int qclass; int qname_len; int qname; } ;
struct outside_network {int serviced; scalar_t__ do_udp; } ;
struct module_qstate {int edns_opts_back_out; int region; } ;
struct module_env {int dummy; } ;
typedef int socklen_t ;
typedef int sldns_buffer ;
typedef int comm_point_callback_type ;


 int free (struct serviced_query*) ;
 int inplace_cb_query_call (struct module_env*,struct query_info*,int ,struct sockaddr_storage*,int ,int *,size_t,struct module_qstate*,int ) ;
 struct serviced_query* lookup_serviced (struct outside_network*,int *,int,struct sockaddr_storage*,int ,int ) ;
 scalar_t__ malloc (int) ;
 int rbtree_delete (int ,struct serviced_query*) ;
 struct serviced_query* serviced_create (struct outside_network*,int *,int,int,int,int,int,char*,struct sockaddr_storage*,int ,int *,size_t,int,int ) ;
 int serviced_gen_query (int *,int ,int ,scalar_t__,int ,int ) ;
 int serviced_tcp_send (struct serviced_query*,int *) ;
 int serviced_udp_send (struct serviced_query*,int *) ;

struct serviced_query*
outnet_serviced_query(struct outside_network* outnet,
 struct query_info* qinfo, uint16_t flags, int dnssec, int want_dnssec,
 int nocaps, int tcp_upstream, int ssl_upstream, char* tls_auth_name,
 struct sockaddr_storage* addr, socklen_t addrlen, uint8_t* zone,
 size_t zonelen, struct module_qstate* qstate,
 comm_point_callback_type* callback, void* callback_arg, sldns_buffer* buff,
 struct module_env* env)
{
 struct serviced_query* sq;
 struct service_callback* cb;
 if(!inplace_cb_query_call(env, qinfo, flags, addr, addrlen, zone, zonelen,
  qstate, qstate->region))
   return ((void*)0);
 serviced_gen_query(buff, qinfo->qname, qinfo->qname_len, qinfo->qtype,
  qinfo->qclass, flags);
 sq = lookup_serviced(outnet, buff, dnssec, addr, addrlen,
  qstate->edns_opts_back_out);



 if(!(cb = (struct service_callback*)malloc(sizeof(*cb))))
  return ((void*)0);
 if(!sq) {

  sq = serviced_create(outnet, buff, dnssec, want_dnssec, nocaps,
   tcp_upstream, ssl_upstream, tls_auth_name, addr,
   addrlen, zone, zonelen, (int)qinfo->qtype,
   qstate->edns_opts_back_out);
  if(!sq) {
   free(cb);
   return ((void*)0);
  }

  if(outnet->do_udp && !(tcp_upstream || ssl_upstream)) {
   if(!serviced_udp_send(sq, buff)) {
    (void)rbtree_delete(outnet->serviced, sq);
    free(sq->qbuf);
    free(sq->zone);
    free(sq);
    free(cb);
    return ((void*)0);
   }
  } else {
   if(!serviced_tcp_send(sq, buff)) {
    (void)rbtree_delete(outnet->serviced, sq);
    free(sq->qbuf);
    free(sq->zone);
    free(sq);
    free(cb);
    return ((void*)0);
   }
  }
 }

 cb->cb = callback;
 cb->cb_arg = callback_arg;
 cb->next = sq->cblist;
 sq->cblist = cb;
 return sq;
}
