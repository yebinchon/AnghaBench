
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bit_to_wchan (void*,int) ;
 int wake_up_sleepers (int ) ;

void
linux_wake_up_bit(void *word, int bit)
{

 wake_up_sleepers(bit_to_wchan(word, bit));
}
