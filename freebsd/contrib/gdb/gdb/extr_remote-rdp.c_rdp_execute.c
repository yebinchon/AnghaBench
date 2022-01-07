
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rdp_execute_finish () ;
 int rdp_execute_start () ;

__attribute__((used)) static void
rdp_execute (void)
{
  rdp_execute_start ();
  rdp_execute_finish ();
}
