
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_global_deinit () ;

void tlsv1_server_global_deinit(void)
{
 crypto_global_deinit();
}
