
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _lwp_exit () ;
 int _lwp_self () ;
 int the_lwp_id ;

__attribute__((used)) static void lwp_main_func(void* arg)
{
 the_lwp_id = _lwp_self();
 _lwp_exit();
}
