
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eloop_terminate () ;

__attribute__((used)) static void hostapd_cli_eloop_terminate(int sig, void *signal_ctx)
{
 eloop_terminate();
}
