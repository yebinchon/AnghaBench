
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int QUEUE_THREAD_COUNT ;
 int THREAD_START (int ,int ,int *) ;
 int * deferred_data ;
 int load_deferred_queue ;
 int * load_threads ;

__attribute__((used)) static void
start_threads_callback(evutil_socket_t fd, short what, void *arg)
{
 int i;

 for (i = 0; i < QUEUE_THREAD_COUNT; ++i) {
  THREAD_START(load_threads[i], load_deferred_queue,
    &deferred_data[i]);
 }
}
