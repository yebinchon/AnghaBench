
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outside_network {int sslctx; } ;
struct comm_point {int ssl; int ssl_shake_state; } ;
typedef int X509_VERIFY_PARAM ;


 int SSL_CTX_get_verify_mode (int ) ;
 int SSL_VERIFY_PEER ;
 int * SSL_get0_param (int ) ;
 int SSL_set1_host (int ,char*) ;
 int X509_CHECK_FLAG_NO_PARTIAL_WILDCARDS ;
 int X509_VERIFY_PARAM_set1_host (int *,char*,int ) ;
 int X509_VERIFY_PARAM_set_hostflags (int *,int ) ;
 int comm_point_tcp_win_bio_cb (struct comm_point*,int ) ;
 int comm_ssl_shake_write ;
 int log_err (char*) ;
 int outgoing_ssl_fd (int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static int
setup_comm_ssl(struct comm_point* cp, struct outside_network* outnet,
 int fd, char* host)
{
 cp->ssl = outgoing_ssl_fd(outnet->sslctx, fd);
 if(!cp->ssl) {
  log_err("cannot create SSL object");
  return 0;
 }



 cp->ssl_shake_state = comm_ssl_shake_write;
 (void)host;

 return 1;
}
