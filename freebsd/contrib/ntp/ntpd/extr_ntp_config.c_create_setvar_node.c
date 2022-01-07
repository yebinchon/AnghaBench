
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* var; char* val; int isdefault; } ;
typedef TYPE_1__ setvar_node ;


 TYPE_1__* emalloc_zero (int) ;
 char* strchr (char*,char) ;

setvar_node *
create_setvar_node(
 char * var,
 char * val,
 int isdefault
 )
{
 setvar_node * my_node;
 char * pch;


 pch = strchr(var, '=');
 if (((void*)0) != pch)
  *pch = '\0';


 my_node = emalloc_zero(sizeof(*my_node));
 my_node->var = var;
 my_node->val = val;
 my_node->isdefault = isdefault;

 return my_node;
}
