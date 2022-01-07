
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;


 int get_offsets () ;
 int immediate_quit ;
 int inferior_ptid ;
 int putpkt (char*) ;
 int remote_current_thread (int ) ;
 int remote_desc ;
 int remote_start_remote_dummy (struct ui_out*,void*) ;
 int serial_write (int ,char*,int) ;
 int set_thread (int,int ) ;

__attribute__((used)) static int
remote_start_remote (struct ui_out *uiout, void *dummy)
{
  immediate_quit++;


  serial_write (remote_desc, "+", 1);


  set_thread (-1, 0);

  inferior_ptid = remote_current_thread (inferior_ptid);

  get_offsets ();

  putpkt ("?");
  immediate_quit--;



  return remote_start_remote_dummy (uiout, dummy);
}
