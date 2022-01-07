
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int fd; scalar_t__ ssl; } ;
typedef TYPE_1__ RES ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int ERR_clear_error () ;
 scalar_t__ SSL_ERROR_ZERO_RETURN ;
 scalar_t__ SSL_get_error (scalar_t__,int) ;
 int SSL_read (scalar_t__,char*,int) ;
 int WSAGetLastError () ;
 scalar_t__ errno ;
 int log_crypto_err (char*) ;
 int log_err (char*,int,...) ;
 scalar_t__ recv (int ,char*,int,int ) ;
 int strerror (scalar_t__) ;
 int wsa_strerror (int ) ;

int
ssl_read_line(RES* res, char* buf, size_t max)
{
 int r;
 size_t len = 0;
 if(!res)
  return 0;
 while(len < max) {
  if(res->ssl) {
   ERR_clear_error();
   if((r=SSL_read(res->ssl, buf+len, 1)) <= 0) {
    if(SSL_get_error(res->ssl, r) == SSL_ERROR_ZERO_RETURN) {
     buf[len] = 0;
     return 1;
    }
    log_crypto_err("could not SSL_read");
    return 0;
   }
  } else {
   while(1) {
    ssize_t rr = recv(res->fd, buf+len, 1, 0);
    if(rr <= 0) {
     if(rr == 0) {
      buf[len] = 0;
      return 1;
     }
     if(errno == EINTR || errno == EAGAIN)
      continue;

     log_err("could not recv: %s", strerror(errno));



     return 0;
    }
    break;
   }
  }
  if(buf[len] == '\n') {

   buf[len] = 0;
   return 1;
  }
  len++;
 }
 buf[max-1] = 0;
 log_err("control line too long (%d): %s", (int)max, buf);
 return 0;
}
