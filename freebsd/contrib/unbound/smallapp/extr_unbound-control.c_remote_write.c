
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int SSL ;


 scalar_t__ SSL_write (int *,char const*,int) ;
 int WSAGetLastError () ;
 int errno ;
 int fatal_exit (char*,int ) ;
 scalar_t__ send (int,char const*,size_t,int ) ;
 int ssl_err (char*) ;
 int strerror (int ) ;
 int wsa_strerror (int ) ;

__attribute__((used)) static void
remote_write(SSL* ssl, int fd, const char* buf, size_t len)
{
 if(ssl) {
  if(SSL_write(ssl, buf, (int)len) <= 0)
   ssl_err("could not SSL_write");
 } else {
  if(send(fd, buf, len, 0) < (ssize_t)len) {

   fatal_exit("could not send: %s", strerror(errno));



  }
 }
}
