
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Keymap ;



int

rl_generic_bind(int type __attribute__((__unused__)),
    const char * keyseq __attribute__((__unused__)),
    const char * data __attribute__((__unused__)),
    Keymap k __attribute__((__unused__)))
{
 return 0;
}
