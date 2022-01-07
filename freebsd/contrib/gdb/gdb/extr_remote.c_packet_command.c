
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {int remote_packet_size; } ;


 char* alloca (int ) ;
 int error (char*) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int print_packet (char*) ;
 int putpkt (char*) ;
 int puts_filtered (char*) ;
 int remote_desc ;

__attribute__((used)) static void
packet_command (char *args, int from_tty)
{
  struct remote_state *rs = get_remote_state ();
  char *buf = alloca (rs->remote_packet_size);

  if (!remote_desc)
    error ("command can only be used with remote target");

  if (!args)
    error ("remote-packet command requires packet text as argument");

  puts_filtered ("sending: ");
  print_packet (args);
  puts_filtered ("\n");
  putpkt (args);

  getpkt (buf, (rs->remote_packet_size), 0);
  puts_filtered ("received: ");
  print_packet (buf);
  puts_filtered ("\n");
}
