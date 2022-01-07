
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 void* xcalloc (int,int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
mm_chall_setup(char **name, char **infotxt, u_int *numprompts,
    char ***prompts, u_int **echo_on)
{
 *name = xstrdup("");
 *infotxt = xstrdup("");
 *numprompts = 1;
 *prompts = xcalloc(*numprompts, sizeof(char *));
 *echo_on = xcalloc(*numprompts, sizeof(u_int));
 (*echo_on)[0] = 0;
}
