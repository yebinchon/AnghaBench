
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int EXIT_FAILURE ;
 int LOG_ERR ;
 int exit (int ) ;
 int g_gate_vlog (int ,char const*,int ) ;

void
g_gate_xvlog(const char *message, va_list ap)
{

 g_gate_vlog(LOG_ERR, message, ap);
 g_gate_vlog(LOG_ERR, "Exiting.", ap);
 exit(EXIT_FAILURE);
}
