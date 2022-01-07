
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int * SSL_CTX_new (int ) ;
 int SSLv23_client_method () ;
 int printf (char*) ;
 scalar_t__ verb ;

__attribute__((used)) static SSL_CTX*
setup_sslctx(void)
{
 SSL_CTX* sslctx = SSL_CTX_new(SSLv23_client_method());
 if(!sslctx) {
  if(verb) printf("SSL_CTX_new error\n");
  return ((void*)0);
 }
 return sslctx;
}
