
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_path (char*,char**,int) ;

void
mod_path (char *dirname, char **which_path)
{
  add_path (dirname, which_path, 1);
}
