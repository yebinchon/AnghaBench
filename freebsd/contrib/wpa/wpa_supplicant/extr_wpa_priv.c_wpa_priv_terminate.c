
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int eloop_terminate () ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpa_priv_terminate(int sig, void *signal_ctx)
{
 wpa_printf(MSG_DEBUG, "wpa_priv termination requested");
 eloop_terminate();
}
