
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_global {int server_cred; } ;


 int os_free (struct tls_global*) ;
 scalar_t__ tls_ref_count ;
 int tlsv1_client_global_deinit () ;
 int tlsv1_cred_free (int ) ;
 int tlsv1_server_global_deinit () ;

void tls_deinit(void *ssl_ctx)
{
 struct tls_global *global = ssl_ctx;
 tls_ref_count--;
 if (tls_ref_count == 0) {






 }



 os_free(global);
}
