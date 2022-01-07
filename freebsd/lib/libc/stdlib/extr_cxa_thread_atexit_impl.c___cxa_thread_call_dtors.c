
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CXA_DTORS_ITERATIONS ;
 int LIST_EMPTY (int *) ;
 int _pthread_self () ;
 int cxa_thread_walk (int ) ;
 int dtors ;
 int fprintf (int ,char*,int ,int) ;
 int stderr ;
 int walk_cb_call ;
 int walk_cb_nocall ;

void
__cxa_thread_call_dtors(void)
{
 int i;

 for (i = 0; i < CXA_DTORS_ITERATIONS && !LIST_EMPTY(&dtors); i++)
  cxa_thread_walk(walk_cb_call);

 if (!LIST_EMPTY(&dtors)) {
  fprintf(stderr, "Thread %p is exiting with more "
      "thread-specific dtors created after %d iterations "
      "of destructor calls\n",
      _pthread_self(), i);
  cxa_thread_walk(walk_cb_nocall);
 }
}
