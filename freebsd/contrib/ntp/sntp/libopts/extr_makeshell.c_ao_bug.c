
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_SOFTWARE ;
 int fprintf (int ,char*,char const*) ;
 int option_exits (int ) ;
 int stderr ;
 char* zao_bug_msg ;

void
ao_bug(char const * msg)
{
    fprintf(stderr, zao_bug_msg, msg);
    option_exits(EX_SOFTWARE);
}
