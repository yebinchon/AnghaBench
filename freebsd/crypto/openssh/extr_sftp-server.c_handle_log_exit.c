
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {scalar_t__ use; } ;


 scalar_t__ HANDLE_UNUSED ;
 int handle_log_close (size_t,char*) ;
 TYPE_1__* handles ;
 size_t num_handles ;

__attribute__((used)) static void
handle_log_exit(void)
{
 u_int i;

 for (i = 0; i < num_handles; i++)
  if (handles[i].use != HANDLE_UNUSED)
   handle_log_close(i, "forced");
}
