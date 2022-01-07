
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {int remote_packet_size; } ;


 int MAGIC_NULL_PID ;
 char* alloca (int ) ;
 int continue_thread ;
 int general_thread ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int putpkt (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
set_thread (int th, int gen)
{
  struct remote_state *rs = get_remote_state ();
  char *buf = alloca (rs->remote_packet_size);
  int state = gen ? general_thread : continue_thread;

  if (state == th)
    return;

  buf[0] = 'H';
  buf[1] = gen ? 'g' : 'c';
  if (th == MAGIC_NULL_PID)
    {
      buf[2] = '0';
      buf[3] = '\0';
    }
  else if (th < 0)
    sprintf (&buf[2], "-%x", -th);
  else
    sprintf (&buf[2], "%x", th);
  putpkt (buf);
  getpkt (buf, (rs->remote_packet_size), 0);
  if (gen)
    general_thread = th;
  else
    continue_thread = th;
}
