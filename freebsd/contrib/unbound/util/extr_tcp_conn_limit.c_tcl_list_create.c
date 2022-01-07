
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcl_list {int region; } ;


 scalar_t__ calloc (int,int) ;
 int regional_create () ;
 int tcl_list_delete (struct tcl_list*) ;

struct tcl_list*
tcl_list_create(void)
{
 struct tcl_list* tcl = (struct tcl_list*)calloc(1,
  sizeof(struct tcl_list));
 if(!tcl)
  return ((void*)0);
 tcl->region = regional_create();
 if(!tcl->region) {
  tcl_list_delete(tcl);
  return ((void*)0);
 }
 return tcl;
}
