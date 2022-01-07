
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum exit_status_type { ____Placeholder_exit_status_type } exit_status_type ;


 int E_ERROR ;
 int E_WARNING ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int assert (int) ;
 int exit_status ;
 int exit_status_cs ;

extern void
set_exit_status(enum exit_status_type new_status)
{
 assert(new_status == E_WARNING || new_status == E_ERROR);





 if (exit_status != E_ERROR)
  exit_status = new_status;





 return;
}
