
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ arc4_count ;
 int arc4_stir () ;
 scalar_t__ arc4_stir_pid ;
 scalar_t__ getpid () ;
 int rs_initialized ;

__attribute__((used)) static void
arc4_stir_if_needed(void)
{
 pid_t pid = getpid();

 if (arc4_count <= 0 || !rs_initialized || arc4_stir_pid != pid) {
  arc4_stir_pid = pid;
  arc4_stir();
 }
}
