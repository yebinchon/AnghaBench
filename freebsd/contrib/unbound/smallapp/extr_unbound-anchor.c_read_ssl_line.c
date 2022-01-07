
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 scalar_t__ SSL_ERROR_ZERO_RETURN ;
 scalar_t__ SSL_get_error (int *,int) ;
 int SSL_read (int *,char*,int) ;
 int printf (char*) ;
 scalar_t__ verb ;

__attribute__((used)) static int
read_ssl_line(SSL* ssl, char* buf, size_t len)
{
 size_t n = 0;
 int r;
 int endnl = 0;
 while(1) {
  if(n >= len) {
   if(verb) printf("line too long\n");
   return 0;
  }
  if((r = SSL_read(ssl, buf+n, 1)) <= 0) {
   if(SSL_get_error(ssl, r) == SSL_ERROR_ZERO_RETURN) {

    break;
   }
   if(verb) printf("could not SSL_read\n");
   return 0;
  }
  if(endnl && buf[n] == '\n') {
   break;
  } else if(endnl) {

   if(verb) printf("error: stray linefeeds\n");
   return 0;
  } else if(buf[n] == '\r') {

   endnl = 1;
   continue;
  } else if(buf[n] == '\n') {

   break;
  } else n++;
 }
 buf[n] = 0;
 return 1;
}
