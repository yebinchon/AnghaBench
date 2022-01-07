
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rl_vcpfunc_t ;


 int EL_UNBUFFERED ;
 int * e ;
 int el_set (int *,int ,int) ;
 int rl_initialize () ;
 int * rl_linefunc ;
 int rl_set_prompt (char const*) ;

void
rl_callback_handler_install(const char *prompt, rl_vcpfunc_t *linefunc)
{
 if (e == ((void*)0)) {
  rl_initialize();
 }
 (void)rl_set_prompt(prompt);
 rl_linefunc = linefunc;
 el_set(e, EL_UNBUFFERED, 1);
}
