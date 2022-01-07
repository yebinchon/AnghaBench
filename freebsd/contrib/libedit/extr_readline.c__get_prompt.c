
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EditLine ;


 int rl_already_prompted ;
 char* rl_prompt ;

__attribute__((used)) static char *
_get_prompt(EditLine *el __attribute__((__unused__)))
{
 rl_already_prompted = 1;
 return rl_prompt;
}
