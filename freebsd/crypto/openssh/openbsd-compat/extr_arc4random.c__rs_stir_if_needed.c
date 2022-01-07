
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int _rs_stir () ;
 scalar_t__ getpid () ;
 size_t rs_count ;
 int rs_initialized ;
 scalar_t__ rs_stir_pid ;

__attribute__((used)) static inline void
_rs_stir_if_needed(size_t len)
{
 pid_t pid = getpid();

 if (rs_count <= len || !rs_initialized || rs_stir_pid != pid) {
  rs_stir_pid = pid;
  _rs_stir();
 } else
  rs_count -= len;
}
