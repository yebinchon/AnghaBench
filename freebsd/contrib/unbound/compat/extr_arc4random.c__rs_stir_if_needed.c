
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_2__ {size_t rs_count; } ;


 int _rs_stir () ;
 scalar_t__ getpid () ;
 TYPE_1__* rs ;

__attribute__((used)) static inline void
_rs_stir_if_needed(size_t len)
{

 static pid_t _rs_pid = 0;
 pid_t pid = getpid();


 if (_rs_pid == 0 || _rs_pid != pid) {
  _rs_pid = pid;
  if (rs)
   rs->rs_count = 0;
 }

 if (!rs || rs->rs_count <= len)
  _rs_stir();
 if (rs->rs_count <= len)
  rs->rs_count = 0;
 else
  rs->rs_count -= len;
}
