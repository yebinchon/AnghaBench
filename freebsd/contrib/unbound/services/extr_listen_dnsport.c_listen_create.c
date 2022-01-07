
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcl_list {int dummy; } ;
struct listen_port {scalar_t__ ftype; struct listen_port* next; int fd; } ;
struct listen_dnsport {int * cps; int * dnscrypt_udp_buff; void* udp_buff; } ;
struct dt_env {int dummy; } ;
struct comm_point {int do_not_close; int dnscrypt; int * dnscrypt_buffer; struct dt_env* dtenv; void* ssl; } ;
struct comm_base {int dummy; } ;
typedef int comm_point_callback_type ;


 struct comm_point* comm_point_create_tcp (struct comm_base*,int ,int,int,struct tcl_list*,size_t,void*,int *,void*) ;
 struct comm_point* comm_point_create_udp (struct comm_base*,int ,void*,int *,void*) ;
 struct comm_point* comm_point_create_udp_ancil (struct comm_base*,int ,void*,int *,void*) ;
 int comm_point_delete (struct comm_point*) ;
 int free (struct listen_dnsport*) ;
 int listen_cp_insert (struct comm_point*,struct listen_dnsport*) ;
 int listen_delete (struct listen_dnsport*) ;
 scalar_t__ listen_type_ssl ;
 scalar_t__ listen_type_tcp ;
 scalar_t__ listen_type_tcp_dnscrypt ;
 scalar_t__ listen_type_udp ;
 scalar_t__ listen_type_udp_dnscrypt ;
 scalar_t__ listen_type_udpancil ;
 scalar_t__ listen_type_udpancil_dnscrypt ;
 int lock_basic_init (int *) ;
 int log_err (char*) ;
 scalar_t__ malloc (int) ;
 void* sldns_buffer_new (size_t) ;
 int stream_wait_count_lock ;
 int stream_wait_lock_inited ;

struct listen_dnsport*
listen_create(struct comm_base* base, struct listen_port* ports,
 size_t bufsize, int tcp_accept_count, int tcp_idle_timeout,
 struct tcl_list* tcp_conn_limit, void* sslctx,
 struct dt_env* dtenv, comm_point_callback_type* cb, void *cb_arg)
{
 struct listen_dnsport* front = (struct listen_dnsport*)
  malloc(sizeof(struct listen_dnsport));
 if(!front)
  return ((void*)0);
 front->cps = ((void*)0);
 front->udp_buff = sldns_buffer_new(bufsize);



 if(!front->udp_buff) {
  free(front);
  return ((void*)0);
 }
 if(!stream_wait_lock_inited) {
  lock_basic_init(&stream_wait_count_lock);
  stream_wait_lock_inited = 1;
 }


 while(ports) {
  struct comm_point* cp = ((void*)0);
  if(ports->ftype == listen_type_udp ||
     ports->ftype == listen_type_udp_dnscrypt)
   cp = comm_point_create_udp(base, ports->fd,
    front->udp_buff, cb, cb_arg);
  else if(ports->ftype == listen_type_tcp ||
    ports->ftype == listen_type_tcp_dnscrypt)
   cp = comm_point_create_tcp(base, ports->fd,
    tcp_accept_count, tcp_idle_timeout,
    tcp_conn_limit, bufsize, front->udp_buff,
    cb, cb_arg);
  else if(ports->ftype == listen_type_ssl) {
   cp = comm_point_create_tcp(base, ports->fd,
    tcp_accept_count, tcp_idle_timeout,
    tcp_conn_limit, bufsize, front->udp_buff,
    cb, cb_arg);
   cp->ssl = sslctx;
  } else if(ports->ftype == listen_type_udpancil ||
      ports->ftype == listen_type_udpancil_dnscrypt)
   cp = comm_point_create_udp_ancil(base, ports->fd,
    front->udp_buff, cb, cb_arg);
  if(!cp) {
   log_err("can't create commpoint");
   listen_delete(front);
   return ((void*)0);
  }
  cp->dtenv = dtenv;
  cp->do_not_close = 1;
  if(!listen_cp_insert(cp, front)) {
   log_err("malloc failed");
   comm_point_delete(cp);
   listen_delete(front);
   return ((void*)0);
  }
  ports = ports->next;
 }
 if(!front->cps) {
  log_err("Could not open sockets to accept queries.");
  listen_delete(front);
  return ((void*)0);
 }

 return front;
}
