
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {long remote_packet_size; } ;


 long get_memory_packet_size (int *) ;
 struct remote_state* get_remote_state () ;
 int memory_read_packet_config ;

__attribute__((used)) static long
get_memory_read_packet_size (void)
{
  struct remote_state *rs = get_remote_state ();
  long size = get_memory_packet_size (&memory_read_packet_config);



  if (size > (rs->remote_packet_size))
    size = (rs->remote_packet_size);
  return size;
}
