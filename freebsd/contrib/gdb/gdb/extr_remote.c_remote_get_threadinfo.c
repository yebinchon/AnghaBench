
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int threadref ;
struct remote_state {int remote_packet_size; } ;
struct gdb_ext_thread_info {int dummy; } ;


 char* alloca (int ) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int pack_threadinfo_request (char*,int,int *) ;
 int putpkt (char*) ;
 int remote_unpack_thread_info_response (char*,int *,struct gdb_ext_thread_info*) ;

__attribute__((used)) static int
remote_get_threadinfo (threadref *threadid, int fieldset,
         struct gdb_ext_thread_info *info)
{
  struct remote_state *rs = get_remote_state ();
  int result;
  char *threadinfo_pkt = alloca (rs->remote_packet_size);

  pack_threadinfo_request (threadinfo_pkt, fieldset, threadid);
  putpkt (threadinfo_pkt);
  getpkt (threadinfo_pkt, (rs->remote_packet_size), 0);
  result = remote_unpack_thread_info_response (threadinfo_pkt + 2, threadid,
            info);
  return result;
}
