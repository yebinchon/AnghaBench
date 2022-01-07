
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_path (char*,char**,int ) ;

__attribute__((used)) static void
env_mod_path (char *dirname, char **which_path)
{
  if (dirname == 0 || dirname[0] == '\0')
    return;



  add_path (dirname, which_path, 0);
}
