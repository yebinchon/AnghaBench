
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int auto_abandon ;
 int class_support ;
 int overload_resolution ;
 int setlist ;
 int showlist ;
 int var_boolean ;

void
_initialize_valops (void)
{
  add_show_from_set
    (add_set_cmd ("overload-resolution", class_support, var_boolean, (char *) &overload_resolution,
    "Set overload resolution in evaluating C++ functions.",
    &setlist),
     &showlist);
  overload_resolution = 1;
}
