
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct comm_point {scalar_t__ ssl_shake_state; int tcp_byte_count; int buffer; TYPE_1__* ev; int ssl; } ;
typedef int ssize_t ;
struct TYPE_2__ {int ev; } ;


 scalar_t__ EPIPE ;
 int ERR_clear_error () ;
 int LDNS_RR_BUF_SIZE ;
 int SSL_ERROR_SYSCALL ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_ERROR_ZERO_RETURN ;
 int SSL_MODE_ENABLE_PARTIAL_WRITE ;
 int SSL_get_error (int ,int) ;
 int SSL_set_mode (int ,int ) ;
 int SSL_write (int ,void*,int) ;
 int UB_EV_WRITE ;
 int comm_point_listen_for_rw (struct comm_point*,int,int ) ;
 void* comm_ssl_shake_hs_read ;
 scalar_t__ comm_ssl_shake_none ;
 scalar_t__ errno ;
 int htons (int ) ;
 int log_assert (int) ;
 int log_crypto_err (char*) ;
 int log_err (char*,int ) ;
 int memmove (int *,int *,int) ;
 int * sldns_buffer_current (int ) ;
 int sldns_buffer_limit (int ) ;
 int sldns_buffer_remaining (int ) ;
 int sldns_buffer_set_position (int ,int) ;
 int sldns_buffer_skip (int ,int ) ;
 int ssl_handshake (struct comm_point*) ;
 int strerror (scalar_t__) ;
 int tcp_callback_writer (struct comm_point*) ;
 int ub_winsock_tcp_wouldblock (int ,int ) ;
 int verbosity ;

__attribute__((used)) static int
ssl_handle_write(struct comm_point* c)
{
 (void)c;
 return 0;

}
