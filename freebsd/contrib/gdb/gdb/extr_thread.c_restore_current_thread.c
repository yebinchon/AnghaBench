
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int get_current_frame () ;
 int inferior_ptid ;
 int print_stack_frame (int ,int ,int) ;
 int ptid_equal (int ,int ) ;
 int switch_to_thread (int ) ;

__attribute__((used)) static void
restore_current_thread (ptid_t ptid)
{
  if (!ptid_equal (ptid, inferior_ptid))
    {
      switch_to_thread (ptid);
      print_stack_frame (get_current_frame (), 0, -1);
    }
}
