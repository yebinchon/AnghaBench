
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int threadref ;
struct remote_state {int remote_packet_size; } ;


 int BUF_THREAD_ID_SIZE ;
 struct remote_state* get_remote_state () ;
 char* unpack_byte (char*,int*) ;
 char* unpack_nibble (char*,int*) ;
 char* unpack_threadid (char*,int *) ;

__attribute__((used)) static int
parse_threadlist_response (char *pkt, int result_limit,
      threadref *original_echo, threadref *resultlist,
      int *doneflag)
{
  struct remote_state *rs = get_remote_state ();
  char *limit;
  int count, resultcount, done;

  resultcount = 0;

  limit = pkt + ((rs->remote_packet_size) - BUF_THREAD_ID_SIZE);
  pkt = unpack_byte (pkt, &count);
  pkt = unpack_nibble (pkt, &done);

  pkt = unpack_threadid (pkt, original_echo);
  while ((count-- > 0) && (pkt < limit))
    {
      pkt = unpack_threadid (pkt, resultlist++);
      if (resultcount++ >= result_limit)
 break;
    }
  if (doneflag)
    *doneflag = done;
  return resultcount;
}
