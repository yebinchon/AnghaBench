
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {int remote_packet_size; } ;


 char* alloca (int ) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int putpkt (char*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static void
extended_remote_restart (void)
{
  struct remote_state *rs = get_remote_state ();
  char *buf = alloca (rs->remote_packet_size);



  buf[0] = 'R';
  sprintf (&buf[1], "%x", 0);
  putpkt (buf);



  putpkt ("?");
  getpkt (buf, (rs->remote_packet_size), 0);
}
