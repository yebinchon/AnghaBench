
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int fd; scalar_t__ ssl; } ;
typedef TYPE_1__ RES ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int ERR_clear_error () ;
 scalar_t__ SSL_ERROR_ZERO_RETURN ;
 scalar_t__ SSL_get_error (scalar_t__,int) ;
 int SSL_write (scalar_t__,char const*,int) ;
 int VERB_QUERY ;
 int WSAGetLastError () ;
 scalar_t__ errno ;
 int log_crypto_err (char*) ;
 int log_err (char*,int ) ;
 int send (int ,char const*,size_t,int ) ;
 int strerror (scalar_t__) ;
 size_t strlen (char const*) ;
 int verbose (int ,char*) ;
 int wsa_strerror (int ) ;

int
ssl_print_text(RES* res, const char* text)
{
 int r;
 if(!res)
  return 0;
 if(res->ssl) {
  ERR_clear_error();
  if((r=SSL_write(res->ssl, text, (int)strlen(text))) <= 0) {
   if(SSL_get_error(res->ssl, r) == SSL_ERROR_ZERO_RETURN) {
    verbose(VERB_QUERY, "warning, in SSL_write, peer "
     "closed connection");
    return 0;
   }
   log_crypto_err("could not SSL_write");
   return 0;
  }
 } else {
  size_t at = 0;
  while(at < strlen(text)) {
   ssize_t r = send(res->fd, text+at, strlen(text)-at, 0);
   if(r == -1) {
    if(errno == EAGAIN || errno == EINTR)
     continue;

    log_err("could not send: %s", strerror(errno));



    return 0;
   }
   at += r;
  }
 }
 return 1;
}
