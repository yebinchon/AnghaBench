
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {int remote_packet_size; } ;


 int add_thread (int ) ;
 char* alloca (int ) ;
 int error (char*) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int in_thread_list (int ) ;
 int pid_to_ptid (int) ;
 int putpkt (char*) ;
 scalar_t__ remote_desc ;
 int remote_find_new_threads () ;
 int strtol (char*,char**,int) ;
 scalar_t__ use_threadinfo_query ;

__attribute__((used)) static void
remote_threads_info (void)
{
  struct remote_state *rs = get_remote_state ();
  char *buf = alloca (rs->remote_packet_size);
  char *bufp;
  int tid;

  if (remote_desc == 0)
    error ("Command can only be used when connected to the remote target.");

  if (use_threadinfo_query)
    {
      putpkt ("qfThreadInfo");
      bufp = buf;
      getpkt (bufp, (rs->remote_packet_size), 0);
      if (bufp[0] != '\0')
 {
   while (*bufp++ == 'm')
     {
       do
  {
    tid = strtol (bufp, &bufp, 16);
    if (tid != 0 && !in_thread_list (pid_to_ptid (tid)))
      add_thread (pid_to_ptid (tid));
  }
       while (*bufp++ == ',');
       putpkt ("qsThreadInfo");
       bufp = buf;
       getpkt (bufp, (rs->remote_packet_size), 0);
     }
   return;
 }
    }


  use_threadinfo_query = 0;
  remote_find_new_threads ();
  return;
}
