
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct comm_point {scalar_t__ ssl_shake_state; int tcp_byte_count; int buffer; TYPE_1__* ev; scalar_t__ tcp_req_info; int ssl; } ;
typedef int ssize_t ;
struct TYPE_2__ {int ev; } ;


 scalar_t__ ECONNRESET ;
 int ERR_clear_error () ;
 scalar_t__ LDNS_HEADER_SIZE ;
 int SSL_ERROR_SYSCALL ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_ERROR_ZERO_RETURN ;
 int SSL_get_error (int ,int) ;
 int SSL_read (int ,void*,int) ;
 int UB_EV_READ ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int comm_point_listen_for_rw (struct comm_point*,int ,int) ;
 void* comm_ssl_shake_hs_write ;
 scalar_t__ comm_ssl_shake_none ;
 scalar_t__ errno ;
 int log_crypto_err (char*) ;
 int log_err (char*,int ) ;
 scalar_t__ sldns_buffer_at (int ,int) ;
 scalar_t__ sldns_buffer_capacity (int ) ;
 scalar_t__ sldns_buffer_current (int ) ;
 scalar_t__ sldns_buffer_limit (int ) ;
 scalar_t__ sldns_buffer_read_u16_at (int ,int ) ;
 scalar_t__ sldns_buffer_remaining (int ) ;
 int sldns_buffer_set_limit (int ,scalar_t__) ;
 int sldns_buffer_skip (int ,int ) ;
 int ssl_handshake (struct comm_point*) ;
 int strerror (scalar_t__) ;
 int tcp_callback_reader (struct comm_point*) ;
 int tcp_req_info_handle_read_close (scalar_t__) ;
 int ub_winsock_tcp_wouldblock (int ,int ) ;
 int verbose (int ,char*,...) ;
 int verbosity ;

__attribute__((used)) static int
ssl_handle_read(struct comm_point* c)
{
 (void)c;
 return 0;

}
