
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * e ;
 int el_reset (int *) ;
 int * h ;
 int rl_initialize () ;

int
rl_reset_terminal(const char *p __attribute__((__unused__)))
{

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();
 el_reset(e);
 return 0;
}
