
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_global {int check_crl; } ;



int tls_global_set_verify(void *tls_ctx, int check_crl, int strict)
{
 struct tls_global *global = tls_ctx;
 global->check_crl = check_crl;
 return 0;
}
