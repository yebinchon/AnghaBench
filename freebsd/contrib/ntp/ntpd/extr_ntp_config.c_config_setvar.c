
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* var; char* val; scalar_t__ isdefault; struct TYPE_5__* link; } ;
typedef TYPE_1__ setvar_node ;
struct TYPE_6__ {int setvar; } ;
typedef TYPE_2__ config_tree ;


 int DEF ;
 TYPE_1__* HEAD_PFIFO (int ) ;
 char* erealloc (char*,size_t) ;
 int free (char*) ;
 int set_sys_var (char*,size_t,int ) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
config_setvar(
 config_tree *ptree
 )
{
 setvar_node *my_node;
 size_t varlen, vallen, octets;
 char * str;

 str = ((void*)0);
 my_node = HEAD_PFIFO(ptree->setvar);
 for (; my_node != ((void*)0); my_node = my_node->link) {
  varlen = strlen(my_node->var);
  vallen = strlen(my_node->val);
  octets = varlen + vallen + 1 + 1;
  str = erealloc(str, octets);
  snprintf(str, octets, "%s=%s", my_node->var,
    my_node->val);
  set_sys_var(str, octets, (my_node->isdefault)
      ? DEF
      : 0);
 }
 if (str != ((void*)0))
  free(str);
}
