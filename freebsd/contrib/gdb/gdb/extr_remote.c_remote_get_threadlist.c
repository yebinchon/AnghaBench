
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int threadref ;
struct remote_state {int remote_packet_size; } ;


 int BUF_THREAD_ID_SIZE ;
 char* alloca (int) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int,int ) ;
 int pack_threadlist_request (char*,int,int,int *) ;
 int parse_threadlist_response (char*,int,int *,int *,int*) ;
 int putpkt (char*) ;
 int threadmatch (int *,int *) ;
 int warning (char*) ;

__attribute__((used)) static int
remote_get_threadlist (int startflag, threadref *nextthread, int result_limit,
         int *done, int *result_count, threadref *threadlist)
{
  struct remote_state *rs = get_remote_state ();
  static threadref echo_nextthread;
  char *threadlist_packet = alloca (rs->remote_packet_size);
  char *t_response = alloca (rs->remote_packet_size);
  int result = 1;


  if ((((result_limit + 1) * BUF_THREAD_ID_SIZE) + 10) >= (rs->remote_packet_size))
    result_limit = ((rs->remote_packet_size) / BUF_THREAD_ID_SIZE) - 2;

  pack_threadlist_request (threadlist_packet,
      startflag, result_limit, nextthread);
  putpkt (threadlist_packet);
  getpkt (t_response, (rs->remote_packet_size), 0);

  *result_count =
    parse_threadlist_response (t_response + 2, result_limit, &echo_nextthread,
          threadlist, done);

  if (!threadmatch (&echo_nextthread, nextthread))
    {
      warning ("HMM: threadlist did not echo arg thread, dropping it\n");
      return 0;
    }
  if (*result_count <= 0)
    {
      if (*done != 1)
 {
   warning ("RMT ERROR : failed to get remote thread list\n");
   result = 0;
 }
      return result;
    }
  if (*result_count > result_limit)
    {
      *result_count = 0;
      warning ("RMT ERROR: threadlist response longer than requested\n");
      return 0;
    }
  return result;
}
