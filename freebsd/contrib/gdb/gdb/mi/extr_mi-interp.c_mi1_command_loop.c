
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mi_command_loop (int) ;

__attribute__((used)) static void
mi1_command_loop (void)
{
  mi_command_loop (1);
}
