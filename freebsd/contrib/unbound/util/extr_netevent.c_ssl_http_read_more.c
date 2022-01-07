
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_point {int buffer; int ssl_shake_state; int ssl; } ;
typedef int ssize_t ;


 scalar_t__ ECONNRESET ;
 int ERR_clear_error () ;
 int SSL_ERROR_SYSCALL ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_ERROR_ZERO_RETURN ;
 int SSL_get_error (int ,int) ;
 int SSL_read (int ,void*,int) ;
 int comm_point_listen_for_rw (struct comm_point*,int ,int) ;
 int comm_ssl_shake_hs_write ;
 scalar_t__ errno ;
 int log_assert (int) ;
 int log_crypto_err (char*) ;
 int log_err (char*,int ) ;
 scalar_t__ sldns_buffer_current (int ) ;
 scalar_t__ sldns_buffer_remaining (int ) ;
 int sldns_buffer_skip (int ,int ) ;
 int strerror (scalar_t__) ;
 int verbosity ;

__attribute__((used)) static int
ssl_http_read_more(struct comm_point* c)
{
 (void)c;
 return 0;

}
