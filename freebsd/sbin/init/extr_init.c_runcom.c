
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * state_func_t ;


 int AUTOBOOT ;
 int _PATH_RUNCOM ;
 int read_ttys ;
 int * run_script (int ) ;
 int runcom_mode ;

__attribute__((used)) static state_func_t
runcom(void)
{
 state_func_t next_transition;

 if ((next_transition = run_script(_PATH_RUNCOM)) != ((void*)0))
  return next_transition;

 runcom_mode = AUTOBOOT;
 return (state_func_t) read_ttys;
}
