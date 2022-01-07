
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INTERPOS_map_stacks_exec ;
 scalar_t__* __libc_interposing ;
 void stub1 () ;

void
__pthread_map_stacks_exec(void)
{

 ((void (*)(void))__libc_interposing[INTERPOS_map_stacks_exec])();
}
