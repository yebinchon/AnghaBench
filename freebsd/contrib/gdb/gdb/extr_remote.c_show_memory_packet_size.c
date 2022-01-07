
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_packet_config {scalar_t__ fixed_p; int size; int name; } ;


 int get_memory_packet_size (struct memory_packet_config*) ;
 int printf_filtered (char*,int ,...) ;

__attribute__((used)) static void
show_memory_packet_size (struct memory_packet_config *config)
{
  printf_filtered ("The %s is %ld. ", config->name, config->size);
  if (config->fixed_p)
    printf_filtered ("Packets are fixed at %ld bytes.\n",
       get_memory_packet_size (config));
  else
    printf_filtered ("Packets are limited to %ld bytes.\n",
       get_memory_packet_size (config));
}
