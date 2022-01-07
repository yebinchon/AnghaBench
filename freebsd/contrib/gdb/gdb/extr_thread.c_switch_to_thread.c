
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int flush_cached_frames () ;
 int get_current_frame () ;
 int inferior_ptid ;
 scalar_t__ ptid_equal (int ,int ) ;
 int read_pc () ;
 int registers_changed () ;
 int select_frame (int ) ;
 int stop_pc ;

__attribute__((used)) static void
switch_to_thread (ptid_t ptid)
{
  if (ptid_equal (ptid, inferior_ptid))
    return;

  inferior_ptid = ptid;
  flush_cached_frames ();
  registers_changed ();
  stop_pc = read_pc ();
  select_frame (get_current_frame ());
}
