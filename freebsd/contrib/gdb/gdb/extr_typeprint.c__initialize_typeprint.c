
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int class_vars ;
 int ptype_command ;
 int whatis_command ;

void
_initialize_typeprint (void)
{

  add_com ("ptype", class_vars, ptype_command,
    "Print definition of type TYPE.\nArgument may be a type name defined by typedef, or \"struct STRUCT-TAG\"\nor \"class CLASS-NAME\" or \"union UNION-TAG\" or \"enum ENUM-TAG\".\nThe selected stack frame's lexical context is used to look up the name.");




  add_com ("whatis", class_vars, whatis_command,
    "Print data type of expression EXP.");

}
