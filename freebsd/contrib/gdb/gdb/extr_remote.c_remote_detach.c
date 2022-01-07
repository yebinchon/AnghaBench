
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {int remote_packet_size; } ;


 char* alloca (int ) ;
 int error (char*) ;
 struct remote_state* get_remote_state () ;
 int puts_filtered (char*) ;
 int remote_desc ;
 int remote_send (char*,int ) ;
 int serial_async (int ,int *,int ) ;
 int strcpy (char*,char*) ;
 scalar_t__ target_is_async_p () ;
 int target_mourn_inferior () ;

__attribute__((used)) static void
remote_detach (char *args, int from_tty)
{
  struct remote_state *rs = get_remote_state ();
  char *buf = alloca (rs->remote_packet_size);

  if (args)
    error ("Argument given to \"detach\" when remotely debugging.");


  strcpy (buf, "D");
  remote_send (buf, (rs->remote_packet_size));


  if (target_is_async_p ())
    serial_async (remote_desc, ((void*)0), 0);

  target_mourn_inferior ();
  if (from_tty)
    puts_filtered ("Ending remote debugging.\n");
}
