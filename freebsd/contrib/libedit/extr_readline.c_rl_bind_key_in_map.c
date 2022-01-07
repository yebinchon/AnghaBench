
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rl_command_func_t ;
typedef int Keymap ;



int

rl_bind_key_in_map(int key __attribute__((__unused__)),
    rl_command_func_t *fun __attribute__((__unused__)),
    Keymap k __attribute__((__unused__)))
{
 return 0;
}
