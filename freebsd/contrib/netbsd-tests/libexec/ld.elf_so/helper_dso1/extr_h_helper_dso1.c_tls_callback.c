
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tls_callback_var ;

__attribute__((used)) static void __attribute__((__used__))
tls_callback(void)
{
 tls_callback_var = 1;
}
