
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;


 int start_remote () ;

__attribute__((used)) static int
remote_start_remote_dummy (struct ui_out *uiout, void *dummy)
{
  start_remote ();


  return 1;
}
