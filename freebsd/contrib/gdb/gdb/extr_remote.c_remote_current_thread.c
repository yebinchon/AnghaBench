
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {int remote_packet_size; } ;
typedef int ptid_t ;


 char* alloca (int ) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int pid_to_ptid (int ) ;
 int putpkt (char*) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static ptid_t
remote_current_thread (ptid_t oldpid)
{
  struct remote_state *rs = get_remote_state ();
  char *buf = alloca (rs->remote_packet_size);

  putpkt ("qC");
  getpkt (buf, (rs->remote_packet_size), 0);
  if (buf[0] == 'Q' && buf[1] == 'C')
    return pid_to_ptid (strtol (&buf[2], ((void*)0), 16));
  else
    return oldpid;
}
