
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {long remote_packet_size; long actual_register_packet_size; } ;
struct memory_packet_config {long size; scalar_t__ fixed_p; } ;


 long MAX_REMOTE_PACKET_SIZE ;
 long MIN_REMOTE_PACKET_SIZE ;
 struct remote_state* get_remote_state () ;

__attribute__((used)) static long
get_memory_packet_size (struct memory_packet_config *config)
{
  struct remote_state *rs = get_remote_state ();
  long what_they_get;
  if (config->fixed_p)
    {
      if (config->size <= 0)
 what_they_get = 16384;
      else
 what_they_get = config->size;
    }
  else
    {
      what_they_get = (rs->remote_packet_size);

      if (config->size > 0
   && what_they_get > config->size)
 what_they_get = config->size;

      if ((rs->actual_register_packet_size) > 0
   && what_they_get > (rs->actual_register_packet_size))
 what_they_get = (rs->actual_register_packet_size);
    }
  if (what_they_get > 16384)
    what_they_get = 16384;
  if (what_they_get < 16)
    what_they_get = 16;
  return what_they_get;
}
