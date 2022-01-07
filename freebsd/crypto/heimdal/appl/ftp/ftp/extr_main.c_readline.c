
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* simple_readline (char*) ;

__attribute__((used)) static char *
readline(char *prompt)
{
    return simple_readline (prompt);
}
