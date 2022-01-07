
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_variable (void*) ;

__attribute__((used)) static void
do_free_variable_cleanup (void *var)
{
  free_variable (var);
}
