#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcl_list {int dummy; } ;
struct listen_port {scalar_t__ ftype; struct listen_port* next; int /*<<< orphan*/  fd; } ;
struct listen_dnsport {int /*<<< orphan*/ * cps; int /*<<< orphan*/ * dnscrypt_udp_buff; void* udp_buff; } ;
struct dt_env {int dummy; } ;
struct comm_point {int do_not_close; int dnscrypt; int /*<<< orphan*/ * dnscrypt_buffer; struct dt_env* dtenv; void* ssl; } ;
struct comm_base {int dummy; } ;
typedef  int /*<<< orphan*/  comm_point_callback_type ;

/* Variables and functions */
 struct comm_point* FUNC0 (struct comm_base*,int /*<<< orphan*/ ,int,int,struct tcl_list*,size_t,void*,int /*<<< orphan*/ *,void*) ; 
 struct comm_point* FUNC1 (struct comm_base*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,void*) ; 
 struct comm_point* FUNC2 (struct comm_base*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC4 (struct listen_dnsport*) ; 
 int /*<<< orphan*/  FUNC5 (struct comm_point*,struct listen_dnsport*) ; 
 int /*<<< orphan*/  FUNC6 (struct listen_dnsport*) ; 
 scalar_t__ listen_type_ssl ; 
 scalar_t__ listen_type_tcp ; 
 scalar_t__ listen_type_tcp_dnscrypt ; 
 scalar_t__ listen_type_udp ; 
 scalar_t__ listen_type_udp_dnscrypt ; 
 scalar_t__ listen_type_udpancil ; 
 scalar_t__ listen_type_udpancil_dnscrypt ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 void* FUNC10 (size_t) ; 
 int /*<<< orphan*/  stream_wait_count_lock ; 
 int stream_wait_lock_inited ; 

struct listen_dnsport* 
FUNC11(struct comm_base* base, struct listen_port* ports,
	size_t bufsize, int tcp_accept_count, int tcp_idle_timeout,
	struct tcl_list* tcp_conn_limit, void* sslctx,
	struct dt_env* dtenv, comm_point_callback_type* cb, void *cb_arg)
{
	struct listen_dnsport* front = (struct listen_dnsport*)
		FUNC9(sizeof(struct listen_dnsport));
	if(!front)
		return NULL;
	front->cps = NULL;
	front->udp_buff = FUNC10(bufsize);
#ifdef USE_DNSCRYPT
	front->dnscrypt_udp_buff = NULL;
#endif
	if(!front->udp_buff) {
		FUNC4(front);
		return NULL;
	}
	if(!stream_wait_lock_inited) {
		FUNC7(&stream_wait_count_lock);
		stream_wait_lock_inited = 1;
	}

	/* create comm points as needed */
	while(ports) {
		struct comm_point* cp = NULL;
		if(ports->ftype == listen_type_udp ||
		   ports->ftype == listen_type_udp_dnscrypt)
			cp = FUNC1(base, ports->fd, 
				front->udp_buff, cb, cb_arg);
		else if(ports->ftype == listen_type_tcp ||
				ports->ftype == listen_type_tcp_dnscrypt)
			cp = FUNC0(base, ports->fd, 
				tcp_accept_count, tcp_idle_timeout,
				tcp_conn_limit, bufsize, front->udp_buff,
				cb, cb_arg);
		else if(ports->ftype == listen_type_ssl) {
			cp = FUNC0(base, ports->fd, 
				tcp_accept_count, tcp_idle_timeout,
				tcp_conn_limit, bufsize, front->udp_buff,
				cb, cb_arg);
			cp->ssl = sslctx;
		} else if(ports->ftype == listen_type_udpancil ||
				  ports->ftype == listen_type_udpancil_dnscrypt)
			cp = FUNC2(base, ports->fd, 
				front->udp_buff, cb, cb_arg);
		if(!cp) {
			FUNC8("can't create commpoint");	
			FUNC6(front);
			return NULL;
		}
		cp->dtenv = dtenv;
		cp->do_not_close = 1;
#ifdef USE_DNSCRYPT
		if (ports->ftype == listen_type_udp_dnscrypt ||
			ports->ftype == listen_type_tcp_dnscrypt ||
			ports->ftype == listen_type_udpancil_dnscrypt) {
			cp->dnscrypt = 1;
			cp->dnscrypt_buffer = sldns_buffer_new(bufsize);
			if(!cp->dnscrypt_buffer) {
				log_err("can't alloc dnscrypt_buffer");
				comm_point_delete(cp);
				listen_delete(front);
				return NULL;
			}
			front->dnscrypt_udp_buff = cp->dnscrypt_buffer;
		}
#endif
		if(!FUNC5(cp, front)) {
			FUNC8("malloc failed");
			FUNC3(cp);
			FUNC6(front);
			return NULL;
		}
		ports = ports->next;
	}
	if(!front->cps) {
		FUNC8("Could not open sockets to accept queries.");
		FUNC6(front);
		return NULL;
	}

	return front;
}