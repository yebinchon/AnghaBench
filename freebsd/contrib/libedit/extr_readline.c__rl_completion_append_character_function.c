
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rl_completion_append_character ;

__attribute__((used)) static const char *

_rl_completion_append_character_function(const char *dummy
    __attribute__((__unused__)))
{
 static char buf[2];
 buf[0] = (char)rl_completion_append_character;
 buf[1] = '\0';
 return buf;
}
