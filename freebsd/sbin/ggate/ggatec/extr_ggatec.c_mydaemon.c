
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CREATE ;
 int EXIT_FAILURE ;
 scalar_t__ action ;
 scalar_t__ daemon (int ,int ) ;
 int err (int ,char*) ;
 int g_gate_destroy (int ,int) ;
 scalar_t__ g_gate_verbose ;
 int unit ;

__attribute__((used)) static void
mydaemon(void)
{

 if (g_gate_verbose > 0)
  return;
 if (daemon(0, 0) == 0)
  return;
 if (action == CREATE)
  g_gate_destroy(unit, 1);
 err(EXIT_FAILURE, "Cannot daemonize");
}
