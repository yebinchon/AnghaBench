
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int SSL ;


 int ERR_clear_error () ;
 scalar_t__ SSL_ERROR_ZERO_RETURN ;
 scalar_t__ SSL_get_error (int *,int) ;
 int SSL_read (int *,char*,int) ;
 int WSAGetLastError () ;
 int errno ;
 int fatal_exit (char*,int ) ;
 size_t recv (int,char*,size_t,int ) ;
 int ssl_err (char*) ;
 int strerror (int ) ;
 int wsa_strerror (int ) ;

__attribute__((used)) static int
remote_read(SSL* ssl, int fd, char* buf, size_t len)
{
 if(ssl) {
  int r;
  ERR_clear_error();
  if((r = SSL_read(ssl, buf, (int)len-1)) <= 0) {
   if(SSL_get_error(ssl, r) == SSL_ERROR_ZERO_RETURN) {

    return 0;
   }
   ssl_err("could not SSL_read");
  }
  buf[r] = 0;
 } else {
  ssize_t rr = recv(fd, buf, len-1, 0);
  if(rr <= 0) {
   if(rr == 0) {

    return 0;
   }

   fatal_exit("could not recv: %s", strerror(errno));



  }
  buf[rr] = 0;
 }
 return 1;
}
