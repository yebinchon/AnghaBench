
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOLIB_ADD (int *,int,int *,int ) ;
 int auto_solib_add ;
 int current_target ;

__attribute__((used)) static int
load_klds_stub (void *arg)
{

 SOLIB_ADD(((void*)0), 1, &current_target, auto_solib_add);
 return (0);
}
