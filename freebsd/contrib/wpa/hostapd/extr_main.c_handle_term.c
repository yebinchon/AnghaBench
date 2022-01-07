
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int eloop_terminate () ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void handle_term(int sig, void *signal_ctx)
{
 wpa_printf(MSG_DEBUG, "Signal %d received - terminating", sig);
 eloop_terminate();
}
