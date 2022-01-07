
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_list {int dummy; } ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int SSL_CTX_free (int *) ;
 int SSL_free (int *) ;
 int * TLS_initiate (int *,int) ;
 int TLS_shutdown (int,int *,int *) ;
 int connect_to_ip (struct ip_list*) ;
 int fd_close (int) ;
 int printf (char*) ;
 int * read_http_result (int *) ;
 int * setup_sslctx () ;
 scalar_t__ verb ;
 int write_http_get (int *,char const*,char const*) ;

__attribute__((used)) static BIO*
https_to_ip(struct ip_list* ip, const char* pathname, const char* urlname)
{
 int fd;
 SSL* ssl;
 BIO* bio;
 SSL_CTX* sslctx = setup_sslctx();
 if(!sslctx) {
  return ((void*)0);
 }
 fd = connect_to_ip(ip);
 if(fd == -1) {
  SSL_CTX_free(sslctx);
  return ((void*)0);
 }
 ssl = TLS_initiate(sslctx, fd);
 if(!ssl) {
  SSL_CTX_free(sslctx);
  fd_close(fd);
  return ((void*)0);
 }
 if(!write_http_get(ssl, pathname, urlname)) {
  if(verb) printf("could not write to server\n");
  SSL_free(ssl);
  SSL_CTX_free(sslctx);
  fd_close(fd);
  return ((void*)0);
 }
 bio = read_http_result(ssl);
 TLS_shutdown(fd, ssl, sslctx);
 return bio;
}
