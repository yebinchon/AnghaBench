
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int assert (int) ;
 int hardware_threads_get () ;
 scalar_t__* opt_block_list ;
 scalar_t__ opt_block_size ;

__attribute__((used)) static void
split_block(uint64_t *block_remaining,
     uint64_t *next_block_remaining,
     size_t *list_pos)
{
 if (*next_block_remaining > 0) {

  assert(hardware_threads_get() == 1);
  assert(opt_block_size > 0);
  assert(opt_block_list != ((void*)0));

  if (*next_block_remaining > opt_block_size) {


   *block_remaining = opt_block_size;
  } else {


   *block_remaining = *next_block_remaining;
  }

  *next_block_remaining -= *block_remaining;

 } else {



  if (opt_block_list[*list_pos + 1] != 0)
   ++*list_pos;

  *block_remaining = opt_block_list[*list_pos];




  if (hardware_threads_get() == 1 && opt_block_size > 0
    && *block_remaining > opt_block_size) {
   *next_block_remaining
     = *block_remaining - opt_block_size;
   *block_remaining = opt_block_size;
  }
 }
}
