
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 size_t stream_wait_count ;
 int stream_wait_count_lock ;
 int stream_wait_lock_inited ;

size_t tcp_req_info_get_stream_buffer_size(void)
{
 size_t s;
 if(!stream_wait_lock_inited)
  return stream_wait_count;
 lock_basic_lock(&stream_wait_count_lock);
 s = stream_wait_count;
 lock_basic_unlock(&stream_wait_count_lock);
 return s;
}
